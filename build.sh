mkdir build
dart compile exe ./scripts/main.dart -o ./build/test_dart
cp -r "natives/"* "build/natives/"