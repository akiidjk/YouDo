import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MultiKeyKeyboardListener extends StatefulWidget {
  const MultiKeyKeyboardListener({
    super.key,
    required this.onKeysPressed,
    required this.child,
    required this.targetKeys,
  });

  final List<Function(Set<LogicalKeyboardKey> pressedKeys)> onKeysPressed;
  final Widget child;
  final List<Set<LogicalKeyboardKey>> targetKeys;

  @override
  State<MultiKeyKeyboardListener> createState() =>
      _MultiKeyKeyboardListenerState();
}

class _MultiKeyKeyboardListenerState extends State<MultiKeyKeyboardListener> {
  final Set<LogicalKeyboardKey> pressedKeys = {};

  @override
  void initState() {
    super.initState();
    RawKeyboard.instance.addListener(_keyboardCallback);
  }

  @override
  void dispose() {
    RawKeyboard.instance.removeListener(_keyboardCallback);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _keyboardCallback(RawKeyEvent keyEvent) {
    if (keyEvent is RawKeyDownEvent) {
      setState(() {
        pressedKeys.add(keyEvent.logicalKey);
        for (int i = 0; i < widget.targetKeys.length; i++) {
          if (pressedKeys.containsAll(widget.targetKeys[i])) {
            widget.onKeysPressed[i](pressedKeys);
            break;
          }
        }
      });
    } else if (keyEvent is RawKeyUpEvent) {
      setState(() {
        pressedKeys.remove(keyEvent.logicalKey);
      });
    }
  }
}
