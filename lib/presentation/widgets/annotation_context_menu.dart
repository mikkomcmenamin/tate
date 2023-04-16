import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/data/models/menu_entry.dart';

import 'reusables/context_menu_region.dart';

class AnnotationContextMenu extends HookConsumerWidget {
  const AnnotationContextMenu({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _shortcutsEntry = useState<ShortcutRegistryEntry?>(null);

    List<MenuEntry> _menus() {
      final List<MenuEntry> result = <MenuEntry>[
        MenuEntry(
          label: 'Hide',
          onPressed: () {
            ContextMenuController.removeAny();
          },
          shortcut: const SingleActivator(LogicalKeyboardKey.keyS, control: true),
        ),
        // Hides the message, but is only enabled if the message isn't
        // already hidden.
        MenuEntry(
          label: 'Reset',
          onPressed: () {
            ContextMenuController.removeAny();
          },
          shortcut: const SingleActivator(LogicalKeyboardKey.escape),
        ),
        MenuEntry(
          label: 'Label',
          menuChildren: <MenuEntry>[
            MenuEntry(
              label: 'Example1',
              onPressed: () {
                ContextMenuController.removeAny();
              },
              shortcut:
              const SingleActivator(LogicalKeyboardKey.keyR, control: true),
            ),
            MenuEntry(
              label: 'Example2',
              onPressed: () {
                ContextMenuController.removeAny();
              },
              shortcut:
              const SingleActivator(LogicalKeyboardKey.keyG, control: true),
            ),
            MenuEntry(
              label: 'Example3',
              onPressed: () {
                ContextMenuController.removeAny();
              },
              shortcut:
              const SingleActivator(LogicalKeyboardKey.keyB, control: true),
            ),
          ],
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




