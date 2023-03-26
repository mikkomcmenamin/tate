import 'package:file_selector/file_selector.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_files_controller.g.dart';

@riverpod
class ImageFileController extends _$ImageFileController {
  @override
  List<XFile?> build() {
    return [];
  }

  void setImageFiles(List<XFile?> files) {
    state = files;
  }

  void addImageFile(XFile? file) {
    state = [...state, file];
  }
}

@riverpod
class SelectedImageController extends _$SelectedImageController {
  @override
  XFile? build() {
    return null;
  }

  void setSelectedImage(XFile? image) {
    state = image;
  }
}

Future<List<XFile?>> loadImages() async {
  const typeGroup = XTypeGroup(label: 'images', extensions: ['jpg', 'jpeg', 'png']);
  final pickedFiles = await openFiles(acceptedTypeGroups: [typeGroup]);

  if (pickedFiles.isEmpty) {
    print('picked file list is empty');
    return [];
  }

  return pickedFiles;
}
