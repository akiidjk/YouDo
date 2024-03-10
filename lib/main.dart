import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen_retriever/screen_retriever.dart';
import 'package:you_do/app/example.dart';
import 'package:you_do/core/view/theme.dart';

import 'app/loginPage.dart';
import 'core/services/authenticator.dart';
import 'core/services/router.dart';
import 'core/view/widgets/loadingPage.dart';
import 'core/view/widgets/windowbar.dart';

const double RATIO = 1.6;

Future<void> main() async {
  Display? primaryDisplay;

  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthAPI())],
      child: const MyApp()));
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows) {
    primaryDisplay = await screenRetriever.getPrimaryDisplay();
    double primaryWidth = primaryDisplay.size.width;
    double primaryHeight = primaryDisplay.size.height;
    doWhenWindowReady(() {
      appWindow.size = Size(primaryWidth / RATIO, primaryHeight / RATIO);
      appWindow.minSize = Size(primaryWidth / RATIO, primaryHeight / RATIO);
      appWindow.maxSize = Size(primaryWidth / RATIO, primaryHeight / RATIO);
      appWindow.title = "YouDo";
      appWindow.show();
    });
  }
}

const borderColor = Color(0xFF805306);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = context.watch<AuthAPI>().status;
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterGenerator.generateRoute,
      home: Platform.isWindows
          ? Scaffold(
              body: WindowBorder(
                color: borderColor,
                width: 1,
                child: CustomWindowBar(
                    height: 40,
                    title: 'YouDo',
                    icon: const Icon(Icons.home, color: textColor, size: 20),
                    child: Container(
                        color: bg_color,
                        width: double.infinity,
                        child: value == AuthStatus.uninitialized
                            ? const LoadingPage()
                            : value == AuthStatus.authenticated
                                ? const example()
                                : const LoginPage()) //actual page
                    ),
              ),
            )
          : Scaffold(
              body: Container(
                width: double.infinity,
                height: double.infinity,
                color: bg_color,
                child: value == AuthStatus.uninitialized
                    ? const LoadingPage()
                    : value == AuthStatus.authenticated
                        ? const example()
                        : const LoginPage(), //actual page
              ),
            ),
    );
  }
}
