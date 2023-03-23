import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/controllers/bounding_box_controller.dart';
import 'package:tate/controllers/drawing_mode_controller.dart';
import 'package:tate/models/bounding_box.dart';

import 'bounding_box_painter.dart';

class ImageWidget extends HookConsumerWidget {
  final ImageProvider imageProvider;

  const ImageWidget({Key? key, required this.imageProvider}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transformationController = useMemoized(() => TransformationController());

    final transformation = useState(Matrix4.identity());

    useEffect(() {
      transformationController.addListener(() {
        transformation.value = transformationController.value;
      });
      return transformationController.dispose;
    }, []);

    final drawingMode = ref.watch(drawingModeControllerProvider);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {},
      onEnter: (event) {},
      onExit: (event) {},
      child: Listener(
        onPointerDown: (event) {
          if (event.buttons == kSecondaryMouseButton) {
            return;
          }
          final box = BoundingBox(startPoint: event.localPosition, endPoint: event.localPosition);
          ref.read(boundingBoxControllerProvider.notifier).addBox(box);
        },
        onPointerMove: (event) {
          if (event.buttons == kSecondaryMouseButton) {
            return;
          }
          ref.read(boundingBoxControllerProvider.notifier).updateCurrentBox(event.localPosition);
        },
        onPointerUp: (event) {},
        child: InteractiveViewer(
          transformationController: transformationController,
          panEnabled: true,
          scaleEnabled: true,
          boundaryMargin: const EdgeInsets.all(2),
          minScale: 0.1,
          maxScale: 10.0,
          child: Stack(
            children: [
              Image(image: imageProvider),
              CustomPaint(
                painter: BoundingBoxPainter(
                  matrix: transformation.value,
                  boxes: ref.watch(boundingBoxControllerProvider),
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: TextButton(
                  onPressed: () => ref.read(boundingBoxControllerProvider.notifier).clearBoxes(),
                  child: Text('Clear'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
