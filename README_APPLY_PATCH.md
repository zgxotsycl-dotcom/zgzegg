# StickMotion "No-Limits" Patch (v7.1)

이 패치는 **관절 제한 없음**을 확실히 하고, 다음 오류들을 함께 정리해 줍니다.
- exporter 경로/이스케이프 문제 수정
- animation_editor_screen의 setState 문법/Easing 충돌/transform 타입 오류 수정
- model_editor_screen의 인자 개수/이벤트 포인터/선택 로직 정리
- repository Color/ui/path 유틸 및 번들 입출력 보강

## 포함 파일
- `lib/engine/exporter.dart`
- `lib/ui/screens/animation_editor_screen.dart`
- `lib/ui/screens/model_editor_screen.dart`
- `lib/data/repository.dart`

## 적용 방법
1. 압축을 프로젝트 루트에 풀고, **같은 경로의 파일을 덮어쓰기** 합니다.
2. 아래 명령을 실행하세요.
   ```powershell
   flutter clean
   flutter pub get
   ```
3. Android SDK 35 이상이 설치되어 있어야 합니다. 필요 시:
   - `android/app/build.gradle`에서 `compileSdk = 35`로 설정하거나
   - `android/gradle.properties`에 `flutter.compileSdkVersion=35` 추가.
4. 폰을 연결하고 실행:
   ```powershell
   flutter run -d <기기ID>
   ```

## 의존성 체크
다음 패키지가 필요합니다.
```yaml
dependencies:
  ffmpeg_kit_flutter_min_gpl: ^6.0.3
  path_provider: ^2.1.3
  archive: ^3.3.7
```
없으면 아래로 추가하세요.
```powershell
flutter pub add ffmpeg_kit_flutter_min_gpl path_provider archive
```

## 참고
- 만약 이전에 `Bone.limits` / `JointLimit` 같은 관절 제한 클래스를 추가했다면, **모두 제거**하세요.
- `lib/engine/renderer.dart`에서 `path.transform([ ... ])` 같은 코드가 있다면,
  `Float64List.fromList([ ... ])`로 감싸 주세요. (이 패치에 포함된 화면 코드에는 이미 반영되어 있습니다.)
