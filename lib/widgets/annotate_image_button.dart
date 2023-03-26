import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/controllers/image_files_controller.dart';

class AnnotateImageButton extends ConsumerWidget {
  const AnnotateImageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(
        Icons.image,
        size: 30,
      ),
      onPressed: () async {
        final pickedFiles = await _loadImages();
        if (pickedFiles.isNotEmpty) {
          ref.read(imageFileControllerProvider.notifier).setImageFiles(pickedFiles);
        }
      },
    );
  }
}

Future<List<XFile?>> _loadImages() async {
  const typeGroup = XTypeGroup(label: 'images', extensions: ['jpg', 'jpeg', 'png']);
  final pickedFiles = await openFiles(acceptedTypeGroups: [typeGroup]);

  if (pickedFiles.isEmpty) {
    print('picked file list is empty');
    return [];
  }

  return pickedFiles;
}
