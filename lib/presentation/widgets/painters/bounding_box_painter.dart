import 'package:flutter/material.dart';
import 'package:tate/data/models/image_data.dart';
import 'package:tate/presentation/theme/AppColors.dart';

class BoundingBoxPainter extends CustomPainter {
  final ImageData imageData;

  BoundingBoxPainter({required this.imageData});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();

    final paint = Paint()
      ..color = AppColors.accentPrimary
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final scaleFactor = imageData.scaleFactor ?? 1;

    for (final box in imageData.boundingBoxes) {
      final startPoint = box.getScaledStartPoint(scaleFactor);
      final endPoint = box.getScaledEndPoint(scaleFactor);
      final rect = Rect.fromLTRB(
        startPoint.dx,
        startPoint.dy,
        endPoint.dx,
        endPoint.dy,
      );
      canvas.drawRect(rect, paint);
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant BoundingBoxPainter oldDelegate) {
    return oldDelegate.imageData.boundingBoxes != imageData.boundingBoxes;
  }
}
