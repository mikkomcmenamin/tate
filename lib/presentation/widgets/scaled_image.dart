import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:tate/data/models/image_data.dart';

class ScaledImage extends StatelessWidget {
  final int imageWidth;
  final int imageHeight;
  final ImageData imageData;
  final void Function(double scaleFactor) onScale;

  const ScaledImage({
    Key? key,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageData,
    required this.onScale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final double maxWidth = constraints.maxWidth;
      final double maxHeight = constraints.maxHeight;

      final double widthScaleFactor = maxWidth / imageWidth;
      final double heightScaleFactor = maxHeight / imageHeight;

      final double scaleFactor = math.min(widthScaleFactor, heightScaleFactor);

      final Size imageSize =
          Size(imageWidth * scaleFactor, imageHeight * scaleFactor);

      WidgetsBinding.instance.addPostFrameCallback((_) {
        onScale(scaleFactor);
      });

      return SizedBox(
        width: imageSize.width,
        height: imageSize.height,
        child: Image(
          image: FileImage(imageData.imageFile),
          fit: BoxFit.contain,
          alignment: Alignment.topLeft,
        ),
      );
    });
  }
}
