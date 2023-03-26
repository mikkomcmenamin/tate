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
