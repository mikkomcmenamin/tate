import 'dart:ui';

import 'package:vector_math/vector_math_64.dart';

Offset applyInverseMatrix(Matrix4 matrix, Offset point) {
  final position = Vector3(point.dx, point.dy, 0);
  final inverseMatrix = Matrix4.inverted(matrix);
  final transformedPosition = inverseMatrix * position;

  return Offset(transformedPosition.x, transformedPosition.y);
}
