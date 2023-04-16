import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'bounding_box.freezed.dart';

@freezed
class BoundingBox with _$BoundingBox {
  const BoundingBox._();
  const factory BoundingBox({required int id, required Offset startPoint, required Offset endPoint, String? label}) = _BoundingBox;

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
