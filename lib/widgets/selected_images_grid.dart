import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/controllers/image_files_controller.dart';

class SelectedImagesGrid extends ConsumerWidget {
  const SelectedImagesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImages = ref.watch(imageFileControllerProvider);

    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: selectedImages.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              ref.read(selectedImageControllerProvider.notifier).setSelectedImage(selectedImages[index]);
            },
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 2),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.file(
                  File(selectedImages[index]!.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
