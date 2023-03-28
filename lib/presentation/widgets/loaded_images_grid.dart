import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/application/controllers/image_files_controller.dart';

class LoadedImagesGrid extends ConsumerWidget {
  const LoadedImagesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImages = ref.watch(imageDataControllerProvider);
    final selectedIndex = ref.watch(selectedImageIndexProvider);

    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: selectedImages.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              ref.read(selectedImageIndexProvider.notifier).setSelectedImageIndex(index);
            },
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 2),
              child: AspectRatio(
                aspectRatio: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: index == selectedIndex ? Border.all(color: Colors.blue, width: 2.0) : null,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.0),
                    child: Image.file(
                      File(selectedImages[index].imageFile.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
