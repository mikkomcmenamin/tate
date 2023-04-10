import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/drawing_mode_controller.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/application/controllers/input_controller.dart';
import 'package:tate/application/state/image_view_providers.dart';
import 'package:tate/application/utils/math_utils.dart';
import 'package:tate/data/models/bounding_box.dart';
import 'package:tate/data/models/image_data.dart';
import 'package:tate/presentation/widgets/label_dropdown.dart';
import 'package:tate/presentation/widgets/painters/label_painter.dart';
import 'package:tate/presentation/widgets/scaled_image.dart';

import 'painters/bounding_box_painter.dart';

class ImageWidget extends HookConsumerWidget {
  const ImageWidget({Key? key, required this.imageData}) : super(key: key);

  final ImageData imageData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transformationController = useMemoized(() => TransformationController());
    final boxes = ref.watch(boundingBoxesOfSelectedImageProvider);
    final imageIndex = ref.watch(selectedImageIndexProvider);

    final transformation = useState(Matrix4.identity());
    final hoveredBox = ref.watch(hoveredBoxProvider);

    useEffect(() {
      transformationController.addListener(() {
        transformation.value = transformationController.value;
      });
      return transformationController.dispose;
    }, []);

    final panEnabled = usePanControl(context);

    final drawingMode = ref.watch(drawingModeControllerProvider);

    return MouseRegion(
      cursor: SystemMouseCursors.precise,
      onHover: (event) {
        _handleBoundingBoxHover(context, ref, transformation.value, event.localPosition);
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
          final box = BoundingBox(id: boxes.length, startPoint: event.localPosition, endPoint: event.localPosition);
          ref
              .read(imageDataControllerProvider.notifier)
              .addBoundingBoxToImage(imageIndex: imageIndex, boundingBox: box);
        },
        onPointerMove: (event) {
          ref.read(mousePositionProvider.notifier).updateMousePosition(event.localPosition);
          if (event.buttons == kSecondaryMouseButton || panEnabled.value || hoveredBox != null) {
            return;
          }
          ref
              .read(imageDataControllerProvider.notifier)
              .updateBoundingBoxInImage(imageIndex: imageIndex, endPoint: event.localPosition);
        },
        onPointerUp: (event) {},
        child: InteractiveViewer(
          transformationController: transformationController,
          panEnabled: panEnabled.value,
          scaleEnabled: true,
          boundaryMargin: const EdgeInsets.all(2),
          minScale: 1,
          maxScale: 1,
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
              CustomPaint(
                painter: BoundingBoxPainter(
                  matrix: transformation.value,
                  boxes: boxes,
                ),
              ),
              CustomPaint(
                // Add this new CustomPaint for labels
                painter: LabelPainter(
                  matrix: transformation.value,
                  hoveredBox: hoveredBox,
                ),
              ),
              if (hoveredBox != null)
                Positioned(
                  left: hoveredBox.startPoint.dx,
                  top: hoveredBox.startPoint.dy,
                  child: LabelDropdown(),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleBoundingBoxHover(BuildContext context, WidgetRef ref, Matrix4 matrix, Offset localPosition) {
    final boxes = ref.read(boundingBoxesOfSelectedImageProvider);
    final inverseMatrix = Matrix4.inverted(matrix);
    final transformedPosition = applyInverseMatrix(inverseMatrix, localPosition);

    BoundingBox? foundBox;

    for (final box in boxes.reversed) {
      final rect = Rect.fromLTRB(
        box.startPoint.dx - 10,
        box.startPoint.dy - 10,
        box.endPoint.dx + 10,
        box.endPoint.dy + 10,
      );

      if (rect.contains(transformedPosition)) {
        foundBox = box;
        break;
      }
    }

    ref.read(hoveredBoxProvider.notifier).updateHoveredBox(foundBox);
  }
}
