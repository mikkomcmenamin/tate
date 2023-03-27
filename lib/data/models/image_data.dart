import 'package:file_selector/file_selector.dart';
import 'package:tate/data/models/bounding_box.dart';

class ImageData {
  final XFile imageFile;
  List<BoundingBox> boundingBoxes;

  ImageData({required this.imageFile, List<BoundingBox>? boundingBoxes}) : boundingBoxes = boundingBoxes ?? [];

  ImageData copyWith({XFile? imageFile, List<BoundingBox>? boundingBoxes}) {
    return ImageData(imageFile: imageFile ?? this.imageFile, boundingBoxes: boundingBoxes ?? this.boundingBoxes);
  }
}
