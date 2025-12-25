# BOKU Animator

Desktop-first Flutter animation editor combining stick-figure rigging with frame-by-frame drawing.

## Highlights

- Stick-figure rigging with bones + simple IK (2-bone)
- Image/sprite attachments, parenting, instance pivots
- Onion skin preview with configurable colors/falloff
- Stick Fighter Mode: frame-by-frame workflow with auto-key + onion skin
- Raster layers with brush/eraser (basic smoothing, pressure-ready)
- Timeline scrubbing, loop A/B, copy/paste of keys/frame/scene
- Autosave + project bundle import/export (`.sma`)
- MP4 export on desktop via system ffmpeg
- MP4 export on Android/iOS via ffmpeg-kit

## Quick Start

1. Flutter 3.x required.
2. `flutter pub get`
3. `flutter run -d windows` (or your platform)

## Exporting Video

## Stick Fighter Mode

- Toggle via the kabaddi icon in the editor toolbar or More menu.
- Enables non-interpolated, frame-by-frame editing (interpolate OFF).
- Turns on onion skin, angle snap (15°), auto-key, and frame snapping.
- Moving to next frame auto-duplicates the current pose if the next frame has no key for the active tool/bone.

- Desktop: requires a local `ffmpeg` binary in your PATH.
- Android/iOS: bundled with `ffmpeg_kit_flutter_full_gpl` — no external binary needed.
 - Android/iOS: bundled with `ffmpeg_kit_flutter_full_gpl` — no external binary needed.

Notes (Android):
- Requires minSdk 24+ and includes packaging rules for NDK libs.
- Video dimensions are coerced to even values for YUV420p compatibility.

Notes (iOS):
- Photos 저장을 위해 `ios/Runner/Info.plist`에 `NSPhotoLibraryAddUsageDescription`, `NSPhotoLibraryUsageDescription`가 포함되어 있습니다.
- 내보낸 MP4는 공유 시트 또는 Photos로 저장할 수 있습니다.

Export UX:
- 진행률 표시: 프레임 렌더링, 인코딩 단계별 진행바 + 남은 시간(ETA)
- 취소 버튼: 렌더링/인코딩 도중 언제든 취소 가능

## Project Bundles

- Export/Import project via toolbar (uses `.sma` zip with models, images, audio).

## Play Store / App Store

- Android: generate a release APK/AAB (`flutter build appbundle`) and upload to Google Play Console.
- iOS: set up signing, `flutter build ipa`, and upload via Transporter.
- App permissions: none required for offline editing; file access for import/export.

## Roadmap

- Full keyframe tracks UI with easing editor
- Advanced brush engine (pressure/tilt), blend modes, masking
- Audio timeline with waveform, per-track mute/gain/offset
- More export formats (PNG sequence, GIF/WEBM with alpha)
# zgzegg
