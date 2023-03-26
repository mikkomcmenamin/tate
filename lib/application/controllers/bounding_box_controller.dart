import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tate/data/models/bounding_box.dart';

part 'bounding_box_controller.g.dart';

@riverpod
class BoundingBoxController extends _$BoundingBoxController {
  @override
  List<BoundingBox> build() {
    return [];
  }

  void addBox(BoundingBox box) {
    state = [...state, box];
  }

  void updateCurrentBox(Offset endPoint) {
    final currentBox = state.last;
    state = [...state..removeLast(), currentBox.copyWith(endPoint: endPoint)];
  }

  void clearBoxes() {
    state = [];
  }
}
