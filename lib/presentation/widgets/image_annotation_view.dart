import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/image_files_controller.dart';

import 'image_widget.dart';

class ImageAnnotationView extends ConsumerWidget {
  const ImageAnnotationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImage = ref.watch(selectedImageControllerProvider);

    if (selectedImage == null) {
      return const Center(child: Text('No image loaded.'));
    }

    return ImageWidget(
      imageProvider: FileImage(File(selectedImage.path)),
    );
  }
}
