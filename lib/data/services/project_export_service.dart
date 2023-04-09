// services/project_export_service.dart

import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/application/controllers/project_controller.dart';
import 'package:tate/data/models/project_export.dart';

part 'project_export_service.g.dart';

@riverpod
void exportProject(ExportProjectRef ref) async {
  print('export project');

  final project = ref.read(projectControllerProvider);
  final imagesData = ref.read(imageDataControllerProvider);

  final labels = project.labels.map((label) => LabelExport(name: label)).toList();

  final images = imagesData.map((imageData) {
    final annotations = imageData.boundingBoxes.map((box) {
      return AnnotationExport(
        type: 'rectangle',
        labelId: box.id,
        points: [box.startPoint.dx, box.startPoint.dy, box.endPoint.dx, box.endPoint.dy],
      );
    }).toList();

    return ImageExport(
      imageId: 0, // TODO: add image id
      name: imageData.imageFile.path.split('/').last,
      width: imageData.width,
      height: imageData.height,
      annotations: annotations,
    );
  }).toList();

  final projectExport = ProjectExport(
    meta: Meta(
      projectName: "DefaultProject",
      size: imagesData.length,
      date: DateTime.now().toIso8601String(),
    ),
    labels: labels,
    images: images,
  );

  try {
    const encoder = JsonEncoder.withIndent('  '); // Use two spaces for indentation
    final export = encoder.convert(projectExport);

    await exportJsonFile(exportJson: export, projectName: projectExport.meta.projectName);
  } catch (e) {
    print(e);
  }
}

Future<void> exportJsonFile({required String exportJson, String? projectName}) async {
  String? outputFile = await FilePicker.platform.saveFile(
    dialogTitle: 'Please select an output file:',
    fileName: '${projectName ?? 'export'}.json',
  );

  if (outputFile != null) {
    // User canceled the picker
    await File(outputFile).writeAsString(exportJson);
  }
}
