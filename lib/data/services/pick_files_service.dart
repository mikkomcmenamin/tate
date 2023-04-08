import 'dart:io';

import 'package:file_picker/file_picker.dart';

Future<List<File>> pickFiles() async {
  final result = await FilePicker.platform.pickFiles(
    allowMultiple: true,
    type: FileType.custom,
    allowedExtensions: ['jpg', 'jpeg', 'png'],
  );

  if (result == null) {
    print('picked file list is empty');
    return [];
  }

  return result.files.map((file) => File(file.path!)).toList();
}
