import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef ContextMenuBuilder = Widget Function(
    BuildContext context, Offset offset);

class ContextMenuRegion extends HookConsumerWidget {
  const ContextMenuRegion({
    Key? key,
    required this.child,
    required this.contextMenuBuilder,
  }) : super(key: key);

  final ContextMenuBuilder contextMenuBuilder;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _contextMenuController = useMemoized(() => ContextMenuController());

    useEffect(() {
      return () {
        _contextMenuController.remove();
      };
    }, []);

    void _show(BuildContext context, Offset position) {
      _contextMenuController.show(
        context: context,
        contextMenuBuilder: (context) {
          return contextMenuBuilder(context, position);
        },
      );
    }

    void _onSecondaryTapUp(TapUpDetails details) {
      _show(context, details.globalPosition);
    }

    void _hide() {
      _contextMenuController.remove();
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onSecondaryTapUp: _onSecondaryTapUp,
      child: child,
    );
  }
}
