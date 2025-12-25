param(
  [Parameter(Mandatory=$true)][string]$Source,
  [switch]$Install,
  [string]$FlutterBin = "C:\\Users\\DANIEL\\Desktop\\flutter_windows_3.24.3-stable\\flutter\\bin\\flutter.bat"
)

$ErrorActionPreference = 'Stop'

if (!(Test-Path $Source)) { throw "Source image not found: $Source" }

$dstDir = Join-Path $PSScriptRoot '..\assets\icon' | Resolve-Path
$dstPng = Join-Path $dstDir 'BOKUAME.png'

# Normalize to 1024x1024 PNG with padding (white) if not square
$tmpOut = Join-Path $env:TEMP "app_icon_$(Get-Random).png"

function Get-ImageSize([string]$path){
  $id = & ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0:s=x -- "$path" 2>$null
  if (-not $id) { return $null }
  $wh = $id.Trim().Split('x'); return @{w=[int]$wh[0]; h=[int]$wh[1]}
}

$size = Get-ImageSize $Source
if ($null -eq $size) { throw "Cannot read image size via ffprobe. Is ffmpeg installed?" }

# Fit longest side to 1024 and pad to square
$scaleFilter = if ($size.w -ge $size.h) { "scale=1024:-1" } else { "scale=-1:1024" }
$padFilter = "pad=1024:1024:(1024-iw)/2:(1024-ih)/2:color=white"
& ffmpeg -y -i "$Source" -vf "$scaleFilter,$padFilter" "$tmpOut" | Out-Null

Copy-Item -Force "$tmpOut" "$dstPng"
Remove-Item "$tmpOut" -ErrorAction SilentlyContinue
Write-Host "Icon normalized and copied to $dstPng" -ForegroundColor Green

# Generate platform icons
if (Test-Path $FlutterBin) { $flutter = $FlutterBin } else { $flutter = 'flutter' }
& $flutter pub run flutter_launcher_icons:main

if ($Install) {
  # Reinstall on first device using existing helper
  powershell -ExecutionPolicy Bypass -File (Join-Path $PSScriptRoot 'android_reinstall.ps1')
}

Write-Host "Done updating app icons." -ForegroundColor Green
