mkdir build
dart compile exe ./scripts/main.dart -o ./build/test_dart.exe
xcopy /E /I /Y "natives\" "build\natives"