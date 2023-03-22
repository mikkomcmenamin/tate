import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/widgets/ImageAnnotationView.dart';

class AnnotateImageButton extends ConsumerWidget {
  const AnnotateImageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: Icon(
        Icons.image,
        size: 30,
      ),
      onPressed: () async {
        final pickedFile = await _loadImage();
        if (pickedFile != null) {
          ref.read(imageFileProvider.notifier).setImageFile(pickedFile);
        }
      },
    );
  }
}

Future<XFile?> _loadImage() async {
  const typeGroup = XTypeGroup(label: 'images', extensions: ['jpg', 'jpeg', 'png']);
  final pickedFile = await openFile(acceptedTypeGroups: [typeGroup]);

  if (pickedFile == null) {
    print('picked file is null');
    return null;
  }

  return pickedFile;
}
