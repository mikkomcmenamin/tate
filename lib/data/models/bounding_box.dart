import 'dart:ui';

class BoundingBox {
  int id;
  Offset startPoint;
  Offset endPoint;
  final String? label;

  BoundingBox({required this.id, required this.startPoint, required this.endPoint, this.label});

  // Rect get rect => Rect.fromPoints(startPoint, endPoint);
  //
  // Offset toOffset(Vector3 vector) => Offset(vector.x, vector.y);
  //
  // // Transform the box coordinates using the given matrix
  // BoundingBox transform(Matrix4 matrix) {
  //   final invertedMatrix = Matrix4.inverted(matrix);
  //   final start = invertedMatrix.transform3(Vector3(startPoint.dx, startPoint.dy, 0));
  //   startPoint = toOffset(start);
  //   final end = invertedMatrix.transform3(Vector3(endPoint.dx, endPoint.dy, 0));
  //   endPoint = toOffset(end);
  //   return BoundingBox(startPoint: startPoint, endPoint: endPoint);
  // }

  BoundingBox copyWith({
    Offset? startPoint,
    Offset? endPoint,
    String? label,
  }) {
    return BoundingBox(
      id: id,
      startPoint: startPoint ?? this.startPoint,
      endPoint: endPoint ?? this.endPoint,
      label: label ?? this.label,
    );
  }
}
