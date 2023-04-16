import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/presentation/views/image_annotation_view.dart';
import 'package:tate/presentation/widgets/inspector_panel.dart';
import 'package:tate/presentation/widgets/loaded_images_grid.dart';
import 'package:tate/presentation/widgets/side_bar.dart';
import 'package:tate/presentation/widgets/tate_app_bar.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Add build code here
    // Inside the build method of _TestImageAnnotationPageState
    return Scaffold(
      appBar: const TateAppBar(),
      body: Row(
        children: const [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: SideBar()),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: ImageAnnotationView(),
          )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: InspectorPanel(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: const LoadedImagesGrid(),
      ),
    );
  }
}
