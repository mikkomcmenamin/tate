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

  void addBoundingBoxToImage({required BoundingBox boundingBox}) {
    final imageData = ref.watch(currentlySelectedImageDataProvider);

    if (imageData == null) return;

    imageData.boundingBoxes = [...imageData.boundingBoxes, boundingBox];

    //if state is not called, state doesn't change
  }

  void updateBoundingBoxInImage({required Offset endPoint}) {
    final imageData = ref.watch(currentlySelectedImageDataProvider);

    if (imageData == null) return;

    final latestBox = imageData.boundingBoxes.last;
    final updatedBox = latestBox.copyWith(endPoint: endPoint);

    imageData.boundingBoxes.last = updatedBox;

    // final newState = List<ImageData>.from(state);
    //
    // newState[imageIndex] = imageData;
    //
    // state = newState;
  }

  void clearBoundingBoxes() {
    final imageIndex = ref.watch(selectedImageIndexProvider);
    if (imageIndex == null) return;

    final imageData = state[imageIndex];

    imageData.boundingBoxes = [];

    final newState = List<ImageData>.from(state);

    newState[imageIndex] = imageData;

    state = newState;
  }

  // //TODO take this into use
  // void updateBoundingBoxes(int imageIndex, BoundingBox newBox, BoundingBoxUpdateAction action) {
  //   final imageData = state[imageIndex];
  //   switch (action) {
  //     case BoundingBoxUpdateAction.add:
  //       imageData.boundingBoxes.add(newBox);
  //       break;
  //     case BoundingBoxUpdateAction.update:
  //       final index = imageData.boundingBoxes.indexWhere((box) => box.id == newBox.id);
  //       if (index != -1) {
  //         imageData.boundingBoxes[index] = newBox;
  //       }
  //       break;
  //     case BoundingBoxUpdateAction.remove:
  //       imageData.boundingBoxes.removeWhere((box) => box.id == newBox.id);
  //       break;
  //   }
  //   state = [...state];
  // }
}

@riverpod
ImageData? currentlySelectedImageData(CurrentlySelectedImageDataRef ref) {
  final imageDatas = ref.watch(imageDataControllerProvider);
  final imageIndex = ref.watch(selectedImageIndexProvider);

  if (imageIndex == null) return null;
  print("currentlySelectedImageData. Index $imageIndex");

  if (imageIndex > imageDatas.length) ;

  return imageDatas[imageIndex];
}

@riverpod
bool isBoundingBoxesDrawn(IsBoundingBoxesDrawnRef ref) {
  final currentImage = ref.watch(currentlySelectedImageDataProvider);

  if (currentImage == null) return false;

  return currentImage.boundingBoxes.isNotEmpty;
}
