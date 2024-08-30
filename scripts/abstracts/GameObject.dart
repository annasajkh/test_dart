// ignore_for_file: file_names, prefer_initializing_formals, non_constant_identifier_names

import 'package:meta/meta.dart';
import 'package:raylib/raylib.dart';

class Gameobject {
  @protected
  Vector2 position;

  @protected
  double rotation;

  Vector2 get Position {
    return position;
  }

  double get Rotation {
    return rotation;
  }

  Gameobject(Vector2 position, double rotation)
      : position = position,
        rotation = rotation;
}
