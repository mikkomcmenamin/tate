import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/controllers/image_files_controller.dart';

class SelectedImagesGrid extends ConsumerWidget {
  const SelectedImagesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImages = ref.watch(imageFileControllerProvider);

    return GridView.builder(
      itemCount: selectedImages.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return Image.file(File(selectedImages[index]!.path));
      },
    );
  }
}
