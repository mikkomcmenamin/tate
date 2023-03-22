import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ImageWidget extends HookConsumerWidget {
  final ImageProvider imageProvider;

  const ImageWidget({super.key, required this.imageProvider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('image widget');
    final transformationController = useMemoized(() => TransformationController());

    final transformation = useState(Matrix4.identity());

    useEffect(() {
      transformationController.addListener(() {
        transformation.value = transformationController.value;
      });
      return transformationController.dispose;
    }, []);

    return GestureDetector(
      onScaleStart: (details) {
        // Handle scale start event
      },
      onScaleUpdate: (details) {
        // Handle scale update event
      },
      onScaleEnd: (details) {
        // Handle scale end event
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
              painter: AnnotationPainter(
                matrix: transformation.value,
                // Pass other required parameters
              ),
            ),
          ],
        ),
      ),

      // Add gesture handling code here
    );
  }
}

class AnnotationPainter extends CustomPainter {
  final Matrix4 matrix;
  // Add other required parameters

  AnnotationPainter({required this.matrix});

  @override
  void paint(Canvas canvas, Size size) {
    // Add annotation drawing logic here
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
