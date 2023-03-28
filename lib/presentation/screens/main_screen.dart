import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/presentation/views/image_annotation_view.dart';
import 'package:tate/presentation/widgets/inspector_panel.dart';
import 'package:tate/presentation/widgets/loaded_images_grid.dart';
import 'package:tate/presentation/widgets/side_bar.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Add build code here
    // Inside the build method of _TestImageAnnotationPageState
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('tate'),
      ),
      body: Row(
        children: [
          SideBar(),
          Expanded(child: ImageAnnotationView()),
          InspectorPanel(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: LoadedImagesGrid(),
      ),
    );
  }
}
