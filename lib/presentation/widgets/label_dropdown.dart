import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/application/controllers/project_controller.dart';
import 'package:tate/application/state/image_view_providers.dart';
import 'package:tate/presentation/theme/AppColors.dart';
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
                if (value == "AddNewLabel") {
                  return;
                } else {
                  // Update the bounding box with the selected label
                  ref.read(imageDataControllerProvider.notifier).setLabelForBoundingBox(
                      imageId: ref.watch(selectedImageIndexProvider), boundingBoxId: box.id, label: value);
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  ...project.labels.map<PopupMenuItem<String>>(
                    (String label) => PopupMenuItem<String>(
                      key: Key(project.labels.join(',')),
                      value: label,
                      child: Text(label),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: "AddNewLabel",
                    child: TextField(
                        style: const TextStyle(color: AppColors.textPrimary),
                        cursorColor: AppColors.accentPrimary,
                        decoration: const InputDecoration(
                          hintText: "Add new label",
                          hintStyle: TextStyle(color: AppColors.textPrimary),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.accentPrimary), // Set the underline color when focused
                          ),
                        ),
                        onSubmitted: (value) {
                          if (value.isNotEmpty) {
                            ref.read(projectControllerProvider.notifier).addLabel(value);

                            ref.read(imageDataControllerProvider.notifier).setLabelForBoundingBox(
                                imageId: ref.watch(selectedImageIndexProvider), boundingBoxId: box.id, label: value);

                            Navigator.pop(context);
                          }
                        }),
                  ),
                ];
              },
            ));
  }
}
