import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tate/data/models/bounding_box.dart';
import 'package:flutter/foundation.dart';

part 'image_data.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ImageData with _$ImageData {
  const factory ImageData(
      {required File imageFile,
      required int width,
      required int height,
        required List<BoundingBox> boundingBoxes,
      double? scaleFactor,
      }) = _ImageData;
}
