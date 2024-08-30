import 'package:raylib/raylib.dart' as raylib;

import '../entities/Player.dart';

typedef Color = raylib.Color;
typedef Vector2 = raylib.Vector2;

class Game {
  Player player = Player(Vector2(100, 100), 0);

  void load() {
    print(player.Position);
  }

  void update(double delta) {
    player.update(delta);
  }

  void draw() {
    player.draw();
  }

  void unload() {

  }
}