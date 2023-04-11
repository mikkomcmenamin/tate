import 'package:flutter/material.dart';
import 'package:tate/data/models/bounding_box.dart';
import 'package:tate/presentation/theme/AppColors.dart';

class LabelPainter extends CustomPainter {
  LabelPainter({required this.matrix, required this.hoveredBox, required this.scaleFactor});

  final Matrix4 matrix;
  final BoundingBox? hoveredBox;
  final double scaleFactor;

  @override
  void paint(Canvas canvas, Size size) {
    if (hoveredBox == null) return;

    final textPainter = TextPainter(
      text: TextSpan(
        text: hoveredBox!.label ?? 'No label',
        style: const TextStyle(color: AppColors.textPrimary, fontSize: 14),
      ),
      textDirection: TextDirection.ltr,
    );

    final startPoint = hoveredBox!.getScaledStartPoint(scaleFactor);
    final endPoint = hoveredBox!.getScaledEndPoint(scaleFactor);

    final rect = Rect.fromLTRB(
      startPoint.dx,
      startPoint.dy,
      endPoint.dx,
      endPoint.dy,
    );
    final labelPosition = Offset(rect.left, rect.top - 20);

    canvas.save();
    canvas.transform(matrix.storage);

    textPainter.layout();

    final backgroundPaint = Paint()..color = Colors.black.withOpacity(0.5);

    final backgroundRect = Rect.fromLTWH(
      labelPosition.dx,
      labelPosition.dy,
      textPainter.width,
      textPainter.height,
    );
    canvas.drawRect(backgroundRect, backgroundPaint);

    textPainter.paint(canvas, labelPosition);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant LabelPainter oldDelegate) {
    return oldDelegate.hoveredBox != hoveredBox ||
        oldDelegate.matrix != matrix ||
        oldDelegate.hoveredBox?.label != hoveredBox?.label;
  }
}
