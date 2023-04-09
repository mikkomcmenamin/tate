import 'dart:io';

import 'package:tate/data/models/bounding_box.dart';

class ImageData {
  final File imageFile;
  final int width;
  final int height;
  List<BoundingBox> boundingBoxes;

  ImageData({required this.imageFile, required this.width, required this.height, List<BoundingBox>? boundingBoxes})
      : boundingBoxes = boundingBoxes ?? [];

  ImageData copyWith({File? imageFile, int? width, int? height, List<BoundingBox>? boundingBoxes}) {
    return ImageData(
        imageFile: imageFile ?? this.imageFile,
        width: width ?? this.width,
        height: height ?? this.height,
        boundingBoxes: boundingBoxes ?? this.boundingBoxes);
  }
}
