import 'dart:math' as math;

import 'package:flutter/material.dart';

class ScaledImage extends StatelessWidget {
  final double imageWidth;
  final double imageHeight;
  final ImageProvider imageProvider;
  final void Function(double scaleFactor) onScale;

  ScaledImage({
    Key? key,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageProvider,
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

      final Size imageSize = Size(imageWidth * scaleFactor, imageHeight * scaleFactor);

      WidgetsBinding.instance.addPostFrameCallback((_) {
        onScale(scaleFactor);
      });

      return SizedBox(
        width: imageSize.width,
        height: imageSize.height,
        child: Image(
          image: imageProvider,
          fit: BoxFit.contain,
          alignment: Alignment.topLeft,
        ),
      );
    });
  }
}
