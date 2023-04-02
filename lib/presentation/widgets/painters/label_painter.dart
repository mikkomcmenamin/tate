import 'package:flutter/material.dart';
import 'package:tate/data/models/bounding_box.dart';

class LabelPainter extends CustomPainter {
  LabelPainter({required this.matrix, required this.boxes});

  final Matrix4 matrix;
  final List<BoundingBox> boxes;

  final _textPaint = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.fill;

  final _textPainter = TextPainter(
    textDirection: TextDirection.ltr,
  );

  @override
  void paint(Canvas canvas, Size size) {
    for (final box in boxes) {
      final startPoint = box.startPoint;
      final endPoint = box.endPoint;
      final rect = Rect.fromLTRB(
        startPoint.dx,
        startPoint.dy,
        endPoint.dx,
        endPoint.dy,
      );

      final offSet = Offset(rect.left, rect.top - 20);

      _textPainter.text = TextSpan(text: box.label, style: TextStyle(color: _textPaint.color));
      _textPainter.layout();
      _textPainter.paint(canvas, offSet);
    }
  }

  @override
  bool shouldRepaint(covariant LabelPainter oldDelegate) {
    return oldDelegate.boxes != boxes || oldDelegate.matrix != matrix;
  }
}
