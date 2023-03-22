import 'package:flutter/material.dart';

class BoundingBoxPainter extends CustomPainter {
  final Matrix4 matrix;
  final Offset? startPoint;
  final Offset? endPoint;

  BoundingBoxPainter({required this.matrix, this.startPoint, this.endPoint});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.transform(matrix.storage);
    //print('Painting with startPoint: $startPoint, endPoint: $endPoint, matrix: $matrix');

    if (startPoint != null && endPoint != null) {
      final paint = Paint()
        ..color = Colors.red
        ..strokeWidth = 2.0
        ..style = PaintingStyle.stroke;

      final rect = Rect.fromPoints(startPoint!, endPoint!);
      canvas.drawRect(rect, paint);
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant BoundingBoxPainter oldDelegate) {
    return oldDelegate.matrix != matrix || oldDelegate.startPoint != startPoint || oldDelegate.endPoint != endPoint;
  }
}
