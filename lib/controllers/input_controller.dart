import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final spacebarPressedProvider = StateProvider<bool>((ref) => false);

class InputController {
  final WidgetRef _ref;

  InputController(this._ref);

  void handleKeyEvent(RawKeyEvent event) {
    final bool isSpacebar = event.logicalKey == LogicalKeyboardKey.space;
    if (isSpacebar) {
      if (event.runtimeType == RawKeyDownEvent) {
        _ref.read(spacebarPressedProvider.notifier).state = true;
      } else if (event.runtimeType == RawKeyUpEvent) {
        _ref.read(spacebarPressedProvider.notifier).state = false;
      }
    }
  }
}

ValueNotifier<bool> usePanControl(BuildContext context) {
  final focusNode = Focus.of(context);
  final panEnabled = useState(ValueNotifier(false));

  useEffect(() {
    void handleKeyEvent(RawKeyEvent event) {
      if (event is RawKeyDownEvent && event.logicalKey == LogicalKeyboardKey.space) {
        panEnabled.value.value = true;
      } else if (event is RawKeyUpEvent && event.logicalKey == LogicalKeyboardKey.space) {
        panEnabled.value.value = false;
      }
    }

    RawKeyboard.instance.addListener(handleKeyEvent);
    return () => RawKeyboard.instance.removeListener(handleKeyEvent);
  }, [focusNode]);

  return panEnabled.value;
}
