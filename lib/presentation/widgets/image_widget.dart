import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/drawing_mode_controller.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/application/controllers/image_files_controller.dart';
import 'package:tate/application/controllers/input_controller.dart';
import 'package:tate/data/models/bounding_box.dart';
import 'package:tate/presentation/widgets/painters/label_painter.dart';

import 'painters/bounding_box_painter.dart';

class ImageWidget extends HookConsumerWidget {
  final ImageProvider imageProvider;

  const ImageWidget({Key? key, required this.imageProvider}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transformationController = useMemoized(() => TransformationController());
    final boxes = ref.watch(boundingBoxesOfSelectedImageProvider);
    final imageIndex = ref.watch(selectedImageIndexProvider);

    final transformation = useState(Matrix4.identity());

    useEffect(() {
      transformationController.addListener(() {
        transformation.value = transformationController.value;
      });
      return transformationController.dispose;
    }, []);

    final panEnabled = usePanControl(context);

    final drawingMode = ref.watch(drawingModeControllerProvider);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {},
      onEnter: (event) {},
      onExit: (event) {},
      child: Listener(
        onPointerDown: (event) {
          if (event.buttons == kSecondaryMouseButton || panEnabled.value) {
            return;
          }
          final box = BoundingBox(id: boxes.length, startPoint: event.localPosition, endPoint: event.localPosition);
          ref
              .read(imageDataControllerProvider.notifier)
              .addBoundingBoxToImage(imageIndex: imageIndex, boundingBox: box);
        },
        onPointerMove: (event) {
          if (event.buttons == kSecondaryMouseButton || panEnabled.value) {
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
          minScale: 0.1,
          maxScale: 10.0,
          child: Stack(
            fit: StackFit.expand,
            children: [
              FittedBox(
                fit: BoxFit.contain,
                child: Image(image: imageProvider),
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
                  boxes: boxes,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
