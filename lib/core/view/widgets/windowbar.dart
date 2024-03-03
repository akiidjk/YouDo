// import 'package:YouDo/providers/colorProvider.dart';
// import 'package:bitsdojo_window/bitsdojo_window.dart';
// import 'package:fluent_ui/fluent_ui.dart';
//
// const Color text_color = ColorProvider.text_color;
// const Color bg_color = ColorProvider.bg_color;
// const Color accent_color = ColorProvider.accent_color;
// const Color primary_color = ColorProvider.primary_color;
//
// var buttonColors = WindowButtonColors(
//   iconNormal: accent_color,
//   iconMouseDown: accent_color,
//   iconMouseOver: primary_color,
//   mouseDown: primary_color,
//   mouseOver: accent_color,
// );
//
// class CustomWindowBar extends StatelessWidget {
//   final Widget child;
//   final double height;
//   final String title;
//   final Icon icon;
//   const CustomWindowBar(
//       {super.key,
//       required Widget this.child,
//       required this.height,
//       required this.title,
//       required this.icon});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScaffoldPage(
//       padding: EdgeInsets.all(0),
//       header: Container(
//           height: height,
//           color: primary_color,
//           child: WindowTitleBarBox(
//             child: Row(
//               children: [
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
//                   child: Row(
//                     children: [
//                       Padding(
//                           padding: const EdgeInsets.only(right: 8.0),
//                           child: icon),
//                       Text(
//                         title,
//                         style: TextStyle(color: text_color),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: MoveWindow(),
//                 ),
//                 MinimizeWindowButton(
//                   colors: buttonColors,
//                 ),
//                 MaximizeWindowButton(
//                   colors: buttonColors,
//                 ),
//                 CloseWindowButton(
//                   context: context,
//                 )
//               ],
//             ),
//           )),
//       content: child,
//     );
//   }
// }
//
// final _defaultCloseButtonColors = WindowButtonColors(
//     mouseOver: Color(0xFFD32F2F),
//     mouseDown: Color(0xFFB71C1C),
//     iconNormal: Color(0xFF805306),
//     iconMouseOver: Color(0xFFFFFFFF));
//
// class CloseWindowButton extends WindowButton {
//   CloseWindowButton(
//       {Key? key,
//       required BuildContext context,
//       WindowButtonColors? colors,
//       VoidCallback? onPressed,
//       bool? animate})
//       : super(
//             key: key,
//             colors: colors ?? _defaultCloseButtonColors,
//             animate: animate ?? false,
//             iconBuilder: (buttonContext) =>
//                 CloseIcon(color: buttonContext.iconColor),
//             onPressed: onPressed ??
//                 () {
//                   Navigator.pushReplacementNamed(
//                     context,
//                     '/check_saves',
//                   );
//                 });
// }
