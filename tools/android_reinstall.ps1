param(
  [string]$Device = "",
  [switch]$Release,
  [switch]$Clean,
  [string]$FlutterBin = "C:\\Users\\DANIEL\\Desktop\\flutter_windows_3.24.3-stable\\flutter\\bin\\flutter.bat",
  [string]$Adb = "C:\\Users\\DANIEL\\AppData\\Local\\Android\\Sdk\\platform-tools\\adb.exe"
)

$ErrorActionPreference = 'Stop'

function Resolve-PackageId {
  $gradle = Join-Path $PSScriptRoot '..\android\app\build.gradle.kts' | Resolve-Path
  if (Test-Path $gradle) {
    $content = Get-Content $gradle -Raw
    $m = [Regex]::Match($content, 'applicationId\s*=\s*"([^"]+)"')
    if ($m.Success) { return $m.Groups[1].Value }
  }
  return 'com.example.bokuanimator'
}

function Resolve-ApkPath([bool]$isRelease){
  if ($isRelease) {
    $p = Join-Path $PSScriptRoot '..\build\app\outputs\flutter-apk\app-release.apk'
    if (Test-Path $p) { return $p }
    return $p
  } else {
    $p = Join-Path $PSScriptRoot '..\build\app\outputs\flutter-apk\app-debug.apk'
    return $p
  }
}

function Ensure-Bin([string]$bin, [string]$fallback){
  if (Test-Path $bin) { return $bin }
  return $fallback
}

$flutter = Ensure-Bin $FlutterBin 'flutter'
$adb = Ensure-Bin $Adb 'adb'

if ($Clean) { & $flutter clean }

Write-Host "[1/4] Building APK..." -ForegroundColor Cyan
if ($Release) { & $flutter build apk --release } else { & $flutter build apk --debug }

$apk = Resolve-ApkPath -isRelease:$Release.IsPresent
if (!(Test-Path $apk)) { throw "APK not found at $apk" }

Write-Host "[2/4] Selecting device..." -ForegroundColor Cyan
$devices = & $adb devices | Select-String -Pattern "\tdevice$" | ForEach-Object { ($_ -split '\s+')[0] }
if ([string]::IsNullOrEmpty($Device)) { $Device = $devices | Select-Object -First 1 }
if ([string]::IsNullOrEmpty($Device)) { throw "No Android device/emulator found (adb devices)" }
Write-Host "Using device: $Device"

$pkg = Resolve-PackageId
Write-Host "[3/4] Uninstalling $pkg (ignore errors if not installed)..." -ForegroundColor Cyan
try { & $adb -s $Device uninstall $pkg | Out-Null } catch { }

Write-Host "[4/4] Installing $apk ..." -ForegroundColor Cyan
& $adb -s $Device install -r -d $apk | Out-Null

Write-Host "Launching $pkg/.MainActivity" -ForegroundColor Cyan
& $adb -s $Device shell am start -n "$pkg/.MainActivity" | Out-Null

Write-Host "Done." -ForegroundColor Green

