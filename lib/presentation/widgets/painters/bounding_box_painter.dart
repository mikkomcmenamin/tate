import 'package:flutter/material.dart';
import 'package:tate/data/models/bounding_box.dart';

class BoundingBoxPainter extends CustomPainter {
  final Matrix4 matrix;
  final List<BoundingBox> boxes;

  BoundingBoxPainter({required this.matrix, required this.boxes});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.transform(matrix.storage);

    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    for (final box in boxes) {
      final startPoint = box.startPoint;
      final endPoint = box.endPoint;
      final rect = Rect.fromLTRB(
        startPoint.dx,
        startPoint.dy,
        endPoint.dx,
        endPoint.dy,
      );
      canvas.drawRect(rect, paint);
    }

    // for (final box in boxes) {
    //   final transformedBox = box.transform(matrix);
    //   canvas.drawRect(transformedBox.rect, paint);
    // }

    // for (final box in transformedBoxes) {
    //   canvas.drawRect(box.rect, paint);
    // }

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant BoundingBoxPainter oldDelegate) {
    return oldDelegate.boxes != boxes || oldDelegate.matrix != matrix;
  }
}
