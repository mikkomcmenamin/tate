import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/application/controllers/image_files_controller.dart';
import 'package:tate/presentation/widgets/draw_bounding_box_button.dart';

import 'annotate_image_button.dart';

class SideBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showClearButton = ref.watch(isBoundingBoxesDrawnProvider);
    final imageIndex = ref.watch(selectedImageIndexProvider);

    return Container(
      width: 50, // Adjust the width to your preference
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const AnnotateImageButton(),
              DrawBoundingBoxButton(),
            ],
          ),
          const Expanded(child: SizedBox()), // Add this
          // Add the "Clear" button here
          if (showClearButton) // Add this condition
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () =>
                  ref.read(imageDataControllerProvider.notifier).clearBoundingBoxes(imageIndex: imageIndex),
            ),
        ],
      ),
    );
  }
}
