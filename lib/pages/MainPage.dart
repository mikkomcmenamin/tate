import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/widgets/ImageAnnotationView.dart';
import 'package:tate/widgets/side_bar.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

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
          children: [SideBar(), Expanded(child: ImageAnnotationView())],
        ));
  }
}
