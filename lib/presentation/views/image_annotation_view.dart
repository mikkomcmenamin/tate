import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/presentation/theme/reusable_widgets.dart';

import '../widgets/image_widget.dart';

class ImageAnnotationView extends ConsumerWidget {
  const ImageAnnotationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImage = ref.watch(currentlySelectedImageDataProvider);

    return TateFrame(
      child: selectedImage != null
          ? ImageWidget(imageData: selectedImage)
          : const Center(
              child: Text('No image loaded.'),
            ),
    );
  }
}
