import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drawing_mode_controller.g.dart';

enum EDrawingMode { none, boundingBox, polygon }

@riverpod
class DrawingModeController extends _$DrawingModeController {
  @override
  EDrawingMode build() {
    return EDrawingMode.none;
  }

  void setDrawingMode(EDrawingMode mode) {
    state = mode;
  }
}
