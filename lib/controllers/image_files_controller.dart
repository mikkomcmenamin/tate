import 'package:file_selector/file_selector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final imageFileProvider = StateNotifierProvider<ImageFileController, List<XFile?>>((ref) {
  return ImageFileController();
});

class ImageFileController extends StateNotifier<List<XFile?>> {
  ImageFileController() : super([]);

  void setImageFiles(List<XFile?> files) {
    state = files;
  }

  void addImageFile(XFile? file) {
    state = [...state, file];
  }
}
