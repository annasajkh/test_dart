import 'package:raylib/raylib.dart';
import '../abstracts/GameObject.dart';

abstract class Entity extends Gameobject {
  Vector2 velocity;

  Entity(super.position, super.rotation) : velocity = Vector2.zero();

  void update(double delta) {
    position.x += velocity.x * delta;
    position.y += velocity.y * delta;
  }

  void draw();
}