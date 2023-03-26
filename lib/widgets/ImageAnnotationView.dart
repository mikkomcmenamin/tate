import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/controllers/image_files_controller.dart';

import 'image_widget.dart';

class ImageAnnotationView extends ConsumerWidget {
  const ImageAnnotationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageFiles = ref.watch(imageFileProvider);

    if (imageFiles.isEmpty) {
      return const Center(child: Text('No image loaded.'));
    }

    // Display the first image in the list or change this to show a specific image based on user interaction
    final imageFile = imageFiles.first;
    return ImageWidget(
      imageProvider: FileImage(File(imageFile!.path)),
    );
  }
}
