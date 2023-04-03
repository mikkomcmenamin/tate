import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/application/controllers/image_files_controller.dart';
import 'package:tate/application/controllers/project_controller.dart';
import 'package:tate/application/state/image_view_providers.dart';
import 'package:tate/presentation/theme/reusable_widgets.dart';

class LabelDropdown extends ConsumerWidget {
  const LabelDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final box = ref.watch(hoveredBoxProvider);
    final project = ref.watch(projectControllerProvider);

    return box == null
        ? const SizedBox.shrink()
        : Theme(
            data: Theme.of(context).copyWith(popupMenuTheme: tateFramePopupMenuTheme(context)),
            child: PopupMenuButton<String>(
              tooltip: "Select label",
              onSelected: (String value) {
                // Update the bounding box with the selected label
                ref.read(imageDataControllerProvider.notifier).setLabelForBoundingBox(
                    imageId: ref.watch(selectedImageIndexProvider), boundingBoxId: box.id, label: value);
              },
              itemBuilder: (BuildContext context) {
                return [
                  ...project.labels.map<PopupMenuItem<String>>(
                    (String label) => PopupMenuItem<String>(
                      value: label,
                      child: Text(label),
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: "AddNewLabel",
                    child: Text("Add new label"),
                  ),
                ];
              },
            ));
  }
}
