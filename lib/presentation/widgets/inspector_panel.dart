// inspector_panel.dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/state/image_view_providers.dart';
import 'package:tate/presentation/theme/reusable_widgets.dart';

class InspectorPanel extends ConsumerWidget {
  const InspectorPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mousePosition = ref.watch(mousePositionProvider);

    return TateFrame(
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Inspector Panel",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 50),
            mousePosition != null
                ? Text(
                    'Mouse Position: (${mousePosition.dx.toStringAsFixed(2)}, ${mousePosition.dy.toStringAsFixed(2)})')
                : const Text("Drag to get mouse position"),
          ],
        ),
      ),
    );
  }
}
