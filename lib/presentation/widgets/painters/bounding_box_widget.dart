import 'package:flutter/material.dart';
import 'package:tate/data/models/bounding_box.dart';
import 'package:tate/presentation/theme/AppColors.dart';

class BoundingBoxWidget extends StatelessWidget {
  final BoundingBox box;
  final double scaleFactor;

  const BoundingBoxWidget({Key? key, required this.box, required this.scaleFactor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaledStartPoint = box.getScaledStartPoint(scaleFactor);
    final scaledEndPoint = box.getScaledEndPoint(scaleFactor);
    final rect = Rect.fromPoints(scaledStartPoint, scaledEndPoint);

    return Positioned.fromRect(
      rect: rect,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.accentPrimary, width: 2),
        ),
      ),
    );
  }
}
