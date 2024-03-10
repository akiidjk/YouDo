import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

const Color text_color = Color(0xFFd1dbe4);
const Color bg_color = Color(0xFF1e1f28);
const Color accent_color = Color(0xFF678D85);
const Color primary_color = Color(0xFF353747);

var buttonColors = WindowButtonColors(
  iconNormal: accent_color,
  iconMouseDown: accent_color,
  iconMouseOver: primary_color,
  mouseDown: primary_color,
  mouseOver: accent_color,
);

class CustomWindowBar extends StatelessWidget {
  final Widget child;
  final double height;
  final String title;
  final Icon icon;

  const CustomWindowBar(
      {super.key,
      required this.child,
      required this.height,
      required this.title,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primary_color,
      ),
      child: Column(
        children: [
          WindowTitleBarBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: icon,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        title,
                        style: const TextStyle(color: text_color),
                      ),
                    ),
                  ],
                ),
                Expanded(child: MoveWindow()),
                const WindowButtons()
              ],
            ),
          ),
          Expanded(
            child: child, // Ensure 'child' is defined somewhere in your code
          ),
        ],
      ),
    );
  }
}

final closeButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: const Color(0xFF805306),
    iconMouseOver: Colors.white);

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
