import 'package:flutter/material.dart';
import 'package:tate/data/models/bounding_box.dart';
import 'package:tate/presentation/theme/AppColors.dart';

class LabelPainter extends CustomPainter {
  LabelPainter({required this.matrix, required this.hoveredBox});

  final Matrix4 matrix;
  final BoundingBox? hoveredBox;

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

    final startPoint = hoveredBox!.startPoint;
    final endPoint = hoveredBox!.endPoint;
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
