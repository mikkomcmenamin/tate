import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tate/application/controllers/image_files_controller.dart';
import 'package:tate/data/models/bounding_box.dart';
import 'package:tate/data/models/image_data.dart';

part 'image_data_controller.g.dart';

enum BoundingBoxUpdateAction { add, update, remove }

@riverpod
class ImageDataController extends _$ImageDataController {
  @override
  List<ImageData> build() {
    return [];
  }

  void addImageData(ImageData imageData) {
    state = [...state, imageData];
  }

  void addBoundingBoxToImage({required int? imageIndex, required BoundingBox boundingBox}) {
    if (imageIndex == null) return;

    final imageData = state[imageIndex];

    imageData.boundingBoxes = [...imageData.boundingBoxes, boundingBox];

    final newState = List<ImageData>.from(state);
    newState[imageIndex] = imageData;

    state = newState;
  }

  void updateBoundingBoxInImage({required int? imageIndex, required Offset endPoint}) {
    if (imageIndex == null) return;

    final imageData = state[imageIndex];

    final latestBox = imageData.boundingBoxes.last;
    final updatedBox = latestBox.copyWith(endPoint: endPoint);

    imageData.boundingBoxes.last = updatedBox;

    final newState = List<ImageData>.from(state);

    newState[imageIndex] = imageData;

    state = newState;
  }

  void clearBoundingBoxes({required int? imageIndex}) {
    if (imageIndex == null) return;

    final imageData = state[imageIndex];

    imageData.boundingBoxes = [];

    final newState = List<ImageData>.from(state);

    newState[imageIndex] = imageData;

    state = newState;
  }

  void setLabelForBoundingBox({required int? imageId, required int boundingBoxId, required String label}) {
    if (imageId == null) return;

    final imageData = state[imageId];

    final boxIndex = imageData.boundingBoxes.indexWhere((element) => element.id == boundingBoxId);

    if (boxIndex == -1) return;

    final updatedBox = imageData.boundingBoxes[boxIndex].copyWith(label: label);

    imageData.boundingBoxes[boxIndex] = updatedBox;

    final newState = List<ImageData>.from(state);

    newState[imageId] = imageData;

    state = newState;
  }
}

@riverpod
ImageData? currentlySelectedImageData(CurrentlySelectedImageDataRef ref) {
  final imageDatas = ref.watch(imageDataControllerProvider);
  final imageIndex = ref.watch(selectedImageIndexProvider);

  if (imageIndex == null) return null;

  if (imageIndex > imageDatas.length) return imageDatas[imageDatas.length - 0];

  return imageDatas[imageIndex];
}

@riverpod
List<BoundingBox> boundingBoxesOfSelectedImage(BoundingBoxesOfSelectedImageRef ref) {
  final imageDatas = ref.watch(imageDataControllerProvider);
  final imageIndex = ref.watch(selectedImageIndexProvider);

  if (imageIndex == null || imageIndex > imageDatas.length) return [];

  //this triggers the provider. not sure if there is a better way.
  return List<BoundingBox>.from(imageDatas[imageIndex].boundingBoxes);
}

@riverpod
bool isBoundingBoxesDrawn(IsBoundingBoxesDrawnRef ref) {
  final currentImage = ref.watch(currentlySelectedImageDataProvider);

  if (currentImage == null) return false;

  return currentImage.boundingBoxes.isNotEmpty;
}
