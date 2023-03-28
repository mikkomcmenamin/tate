import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/application/controllers/image_files_controller.dart';
import 'package:tate/data/models/image_data.dart';

class AnnotateImageButton extends ConsumerWidget {
  const AnnotateImageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(
        Icons.image,
        size: 30,
        color: Colors.white,
      ),
      onPressed: () async {
        final pickedFiles = await loadImages();
        if (pickedFiles.isNotEmpty) {
          for (var file in pickedFiles) {
            ref.read(imageDataControllerProvider.notifier).addImageData(ImageData(imageFile: file!));
          }
        }
      },
    );
  }
}
