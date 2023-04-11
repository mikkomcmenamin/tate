import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/presentation/theme/AppColors.dart';

class LoadedImagesGrid extends ConsumerWidget {
  const LoadedImagesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImages = ref.watch(imageDataControllerProvider);
    final selectedIndex = ref.watch(selectedImageIndexProvider);

    return SizedBox(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: selectedImages.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              ref.read(selectedImageIndexProvider.notifier).setSelectedImageIndex(index);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              child: AspectRatio(
                aspectRatio: 1,
                child: Stack(
                  children: [
                    Image.file(
                      File(selectedImages[index].imageFile.path),
                      fit: BoxFit.cover,
                    ),
                    if (index == selectedIndex)
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.accentPrimary, width: 2.0),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
