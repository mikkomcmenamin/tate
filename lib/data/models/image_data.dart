import 'dart:io';

import 'package:tate/data/models/bounding_box.dart';

class ImageData {
  final File imageFile;
  List<BoundingBox> boundingBoxes;

  ImageData({required this.imageFile, List<BoundingBox>? boundingBoxes}) : boundingBoxes = boundingBoxes ?? [];

  ImageData copyWith({File? imageFile, List<BoundingBox>? boundingBoxes}) {
    return ImageData(imageFile: imageFile ?? this.imageFile, boundingBoxes: boundingBoxes ?? this.boundingBoxes);
  }
}
