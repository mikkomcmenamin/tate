import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/controllers/drawing_mode_controller.dart';

import 'bounding_box_painter.dart';

class ImageWidget extends HookConsumerWidget {
  final ImageProvider imageProvider;

  const ImageWidget({Key? key, required this.imageProvider}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transformationController = useMemoized(() => TransformationController());

    final transformation = useState(Matrix4.identity());

    final startPoint = useState<Offset?>(null);
    final endPoint = useState<Offset?>(null);

    useEffect(() {
      transformationController.addListener(() {
        transformation.value = transformationController.value;
      });
      return transformationController.dispose;
    }, []);

    final drawingMode = ref.watch(drawingModeControllerProvider);

    return GestureDetector(
      onTapDown: (details) {
        if (drawingMode == EDrawingMode.boundingBox) {
          startPoint.value = details.localPosition;
          print('set startpoint to ${startPoint.value}');
        }
      },
      onPanUpdate: (details) {
        if (drawingMode == EDrawingMode.boundingBox) {
          endPoint.value = details.localPosition;
          print('set endpoint to ${endPoint.value}');
        }
      },
      onPanEnd: (details) {
        //ref.read(drawingModeControllerProvider.notifier).setDrawingMode(EDrawingMode.none);
        //endPoint.value = null;
        //startPoint.value = null;
      },
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
                  matrix: transformation.value, startPoint: startPoint.value, endPoint: endPoint.value
                  // Pass other required parameters
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
