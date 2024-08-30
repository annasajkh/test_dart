import 'package:raylib/raylib.dart' as raylib;
import 'Entity.dart';

typedef Vector2 = raylib.Vector2;
typedef KeyboardKey = raylib.KeyboardKey;
typedef Color = raylib.Color;
typedef Rectangle = raylib.Rectangle;

class Player extends Entity {
  double _speed = 100;

  Player(super.position, super.rotation);

  @override
  void update(double delta) {
    Vector2 direction = Vector2.zero();

    if (raylib.isKeyPressed(KeyboardKey.d)) {
      direction.x = 1;
    } else if (raylib.isKeyPressed(KeyboardKey.a)) {
      direction.x = -1;
    }

    if (raylib.isKeyPressed(KeyboardKey.w)) {
      direction.y = 1;
    } else if (raylib.isKeyPressed(KeyboardKey.s)) {
      direction.y = -1;
    }

    direction = Vector2(direction.x / direction.length, direction.y / direction.length);
    velocity = Vector2(direction.x * _speed, direction.y * _speed);

    super.update(delta);
  }

  @override
  void draw() {
    raylib.drawRectanglePro(Rectangle(position.x, position.y, 100, 100), Vector2(50, 50), rotation, Color.blue);
  }
}
