import 'package:raylib/raylib.dart' as raylib;
import 'core/Game.dart';

typedef Color = raylib.Color;

Game game = Game();

void main() {
  raylib.initLibrary(
      linux: 'natives/linux_x64/raylib.so',
      windows: "natives/windows_x64/raylib.dll");

  game.load();

  raylib.initWindow(960, 540, "Test Dart");

  while (!raylib.windowShouldClose()) {
    game.update(raylib.getFrameTime());

    raylib.beginDrawing();
    raylib.clearBackground(Color.black);

    game.draw();

    raylib.endDrawing();
  }

  game.unload();
  raylib.closeWindow();
}
