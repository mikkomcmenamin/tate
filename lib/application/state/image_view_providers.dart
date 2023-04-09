import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tate/data/models/bounding_box.dart';

part 'image_view_providers.g.dart';

@riverpod
class HoveredBox extends _$HoveredBox {
  @override
  BoundingBox? build() {
    return null;
  }
}

@riverpod
class MousePosition extends _$MousePosition {
  @override
  Offset? build() {
    return null;
  }

  void updateMousePosition(Offset? offset) {
    state = offset;
  }
}
