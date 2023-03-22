import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/controllers/drawing_mode_controller.dart';

class DrawBoundingBoxButton extends ConsumerWidget {
  const DrawBoundingBoxButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drawingMode = ref.watch(drawingModeControllerProvider);
    final bool isSelected = drawingMode == EDrawingMode.boundingBox;

    return IconButton(
      icon: Icon(
        Icons.square_outlined,
        size: 30,
      ),
      onPressed: () {
        if (!isSelected) {
          ref.read(drawingModeControllerProvider.notifier).setDrawingMode(EDrawingMode.boundingBox);
        }
      },
    );
  }
}
