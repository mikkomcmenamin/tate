import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/application/controllers/image_data_controller.dart';
import 'package:tate/application/controllers/project_controller.dart';
import 'package:tate/application/state/image_view_providers.dart';
import 'package:tate/data/models/menu_entry.dart';

import 'reusables/context_menu_region.dart';

class AnnotationContextMenu extends HookConsumerWidget {
  const AnnotationContextMenu({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _shortcutsEntry = useState<ShortcutRegistryEntry?>(null);

    final imageIndex = ref.watch(selectedImageIndexProvider);
    final hoveredBox = ref.watch(hoveredBoxProvider);
    final project = ref.watch(projectControllerProvider);

    List<MenuEntry> _menus() {
      final List<MenuEntry> result = <MenuEntry>[
        MenuEntry(
          label: 'Remove',
          onPressed: () {
            ContextMenuController.removeAny();

            if(hoveredBox != null && imageIndex != null) {
              ref.read(imageDataControllerProvider.notifier).removeBoundingBoxFromImage(
                  imageIndex: imageIndex, boundingBoxId: hoveredBox.id);
            }
          },
          shortcut: const SingleActivator(LogicalKeyboardKey.keyD, control: false),
        ),
        MenuEntry(
          label: 'Label',
          menuChildren: project.labels.map<MenuEntry>((String label) {
            return MenuEntry(
              label: label,
              onPressed: () {
                ContextMenuController.removeAny();

                if(hoveredBox != null && imageIndex != null) {
                  ref.read(imageDataControllerProvider.notifier).setLabelForBoundingBox(
                      imageId: ref.watch(selectedImageIndexProvider), boundingBoxId: hoveredBox.id, label: label);
                }
              },
            );
          }).toList(),
          shortcut: const SingleActivator(LogicalKeyboardKey.keyL, control: false),
        ),
      ];
      _shortcutsEntry.value?.dispose();
      _shortcutsEntry.value = ShortcutRegistry.of(context).addAll(MenuEntry.shortcuts(result));
      return result;
    }

    useEffect(() {
      return () {
        _shortcutsEntry.value?.dispose();
      };
    }, const []);

    Widget _contextMenuBuilder(BuildContext context, Offset anchor, [Offset? secondaryAnchor]) {
      return DesktopTextSelectionToolbar(
        anchor: anchor,
        children: MenuEntry.build(_menus()),
      );
    }

    return ContextMenuRegion(
      contextMenuBuilder: _contextMenuBuilder,
      child: child,
    );
  }
}




