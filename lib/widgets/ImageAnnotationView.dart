import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'image_widget.dart';

class ImageAnnotationView extends ConsumerWidget {
  const ImageAnnotationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageFile = ref.watch(imageFileProvider);

    return imageFile == null
        ? const Center(child: Text('No image loaded.'))
        : ImageWidget(
            imageProvider: FileImage(File(imageFile.path)),
          );
  }
}

class ImageFileNotifier extends StateNotifier<XFile?> {
  ImageFileNotifier() : super(null);

  void setImageFile(XFile? file) {
    state = file;
  }
}

final imageFileProvider = StateNotifierProvider<ImageFileNotifier, XFile?>((ref) => ImageFileNotifier());
