import 'dart:ui';

class BoundingBox {
  int id;
  Offset startPoint;
  Offset endPoint;
  final String? label;

  BoundingBox({required this.id, required this.startPoint, required this.endPoint, this.label});

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

  factory BoundingBox.withScaledPoints({
    required int id,
    required Offset startPoint,
    required Offset endPoint,
    double scaleFactor = 1,
  }) {
    return BoundingBox(
      id: id,
      startPoint: startPoint.scale(1 / scaleFactor, 1 / scaleFactor),
      endPoint: endPoint.scale(1 / scaleFactor, 1 / scaleFactor),
    );
  }

  Offset getScaledStartPoint(double scaleFactor) {
    return startPoint.scale(scaleFactor, scaleFactor);
  }

  Offset getScaledEndPoint(double scaleFactor) {
    return endPoint.scale(scaleFactor, scaleFactor);
  }

  List<double> getPoints(double scaleFactor) {
    return [
      startPoint.dx,
      startPoint.dy,
      endPoint.dx,
      endPoint.dy,
    ];
  }
}
