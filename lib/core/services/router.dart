import 'package:flutter/material.dart';
import 'package:you_do/app/example.dart';
import 'package:you_do/app/loginPage.dart';
import 'package:you_do/app/registerPage.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(builder: (context) => const example());

      case "/login":
        return MaterialPageRoute(builder: (context) => const LoginPage());

      case "/register":
        return MaterialPageRoute(builder: (context) => const RegisterPage());

      default:
        return MaterialPageRoute(builder: (context) => const example());
    }
  }
}
