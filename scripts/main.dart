import 'package:raylib/raylib.dart';

void main() {
  initLibrary(
      linux: 'natives/linux_x64/raylib.so',
      windows: "natives/windows_x64/raylib.dll");

  initWindow(960, 540, "Test Dart");

  while (!windowShouldClose()) {
    beginDrawing();
    clearBackground(Color.black);

    drawRectangle(100, 100, 100, 100, Color.red);

    endDrawing();
  }

  closeWindow();
}
