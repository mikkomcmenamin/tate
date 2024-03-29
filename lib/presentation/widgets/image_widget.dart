import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/drawing_mode_controller.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/application/controllers/input_controller.dart';
import 'package:tate/application/state/image_view_providers.dart';
import 'package:tate/data/models/bounding_box.dart';
import 'package:tate/data/models/image_data.dart';
import 'package:tate/presentation/theme/AppColors.dart';
import 'package:tate/presentation/widgets/annotation_context_menu.dart';
import 'package:tate/presentation/widgets/painters/bounding_box_widget.dart';
import 'package:tate/presentation/widgets/painters/label_painter.dart';
import 'package:tate/presentation/widgets/scaled_image.dart';

class ImageWidget extends HookConsumerWidget {
  const ImageWidget({Key? key, required this.imageData}) : super(key: key);

  final ImageData imageData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boxes = ref.watch(boundingBoxesOfSelectedImageProvider);
    final imageIndex = ref.watch(selectedImageIndexProvider);
    final hoveredBox = ref.watch(hoveredBoxProvider);
    final drawingMode = ref.watch(drawingModeControllerProvider);

    final panEnabled = usePanControl(context); //TODO: Fix the keyboard input for pan
    final scaleFactor = imageData.scaleFactor ?? 1;
    final adjustedHoverBoxStartPoint = hoveredBox?.getScaledStartPoint(scaleFactor);

    return MouseRegion(
      cursor: hoveredBox != null ? SystemMouseCursors.basic : SystemMouseCursors.precise,
      onHover: (event) {
        _handleBoundingBoxHover(context, ref, event.localPosition, scaleFactor);
      },
      onEnter: (event) {},
      onExit: (event) {
        ref.read(mousePositionProvider.notifier).updateMousePosition(null);
      },
      child: Listener(
        onPointerDown: (event) {
          if (event.buttons == kSecondaryMouseButton || panEnabled.value || hoveredBox != null) {
            return;
          }
          final scaleFactor = imageData.scaleFactor ?? 1;
          final box = BoundingBox.withScaledPoints(
            id: boxes.length,
            startPoint: event.localPosition,
            endPoint: event.localPosition,
            scaleFactor: scaleFactor,
          );
          ref
              .read(imageDataControllerProvider.notifier)
              .addBoundingBoxToImage(imageIndex: imageIndex, boundingBox: box);
        },
        onPointerMove: (event) {
          ref.read(mousePositionProvider.notifier).updateMousePosition(event.localPosition);
          if (event.buttons == kSecondaryMouseButton || panEnabled.value || hoveredBox != null) {
            return;
          }
          final scaleFactor = imageData.scaleFactor ?? 1;
          final localPosition = event.localPosition.scale(1 / scaleFactor, 1 / scaleFactor);
          ref
              .read(imageDataControllerProvider.notifier)
              .updateBoundingBoxInImage(imageIndex: imageIndex, endPoint: localPosition);
        },
        onPointerUp: (event) {},
        child: InteractiveViewer(
          panEnabled: panEnabled.value,
          scaleEnabled: true,
          boundaryMargin: const EdgeInsets.all(2),
          minScale: 1,
          maxScale: 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ScaledImage(
                imageWidth: imageData.width,
                imageHeight: imageData.height,
                imageData: imageData,
                onScale: (scale) {
                  ref
                      .read(imageDataControllerProvider.notifier)
                      .setScaleFactorForImage(imageId: imageIndex, scaleFactor: scale);
                },
              ),
              ...boxes.map((box) {
                return BoundingBoxWidget(
                  box: box,
                  scaleFactor: scaleFactor,
                );
              }).toList(),
              CustomPaint(
                painter: LabelPainter(hoveredBox: hoveredBox, scaleFactor: imageData.scaleFactor ?? 1),
              ),
              if (hoveredBox != null)
                Positioned(
                  left: adjustedHoverBoxStartPoint?.dx,
                  top: adjustedHoverBoxStartPoint?.dy,
                  width: (hoveredBox.width) * scaleFactor,
                  height: (hoveredBox.height) * scaleFactor,
                  child: AnnotationContextMenu(
                    child: Container(
                      color: AppColors.accentPrimary.withOpacity(0.05),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleBoundingBoxHover(BuildContext context, WidgetRef ref, Offset localPosition, double scaleFactor) {
    final boxes = ref.read(boundingBoxesOfSelectedImageProvider);

    BoundingBox? foundBox;

    for (final box in boxes.reversed) {
      final scaledStartPoint = box.getScaledStartPoint(scaleFactor);
      final scaledEndPoint = box.getScaledEndPoint(scaleFactor);

      final rect = Rect.fromLTRB(
        scaledStartPoint.dx - 10,
        scaledStartPoint.dy - 10,
        scaledEndPoint.dx + 10,
        scaledEndPoint.dy + 10,
      );

      if (rect.contains(localPosition)) {
        foundBox = box;
        break;
      }
    }

    ref.read(hoveredBoxProvider.notifier).updateHoveredBox(foundBox);
  }
}
