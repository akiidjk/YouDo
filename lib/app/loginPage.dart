import 'package:flutter/material.dart';
import 'package:you_do/core/view/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('YouDo', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Login in your focus',
                      style: Theme.of(context).textTheme.headlineLarge),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    // height: 80,
                    height: 60,
                    child: TextFormField(
                      cursorOpacityAnimates: true,
                      // maxLength: 200,
                      decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          prefixIcon: Icon(Icons.email)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    // height: 80,
                    height: 60,
                    child: TextFormField(
                        cursorOpacityAnimates: true,
                        // maxLength: 200,
                        obscureText: !isObscure,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() => isObscure = !isObscure);
                              },
                              icon: !isObscure
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off)),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 400,
                      height: 27,
                      child: FilledButton(
                          onPressed: () {}, child: const Text('Login'))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: RichText(
                          text: const TextSpan(children: [
                    TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.normal)),
                    TextSpan(
                        text: ' Register',
                        style: TextStyle(
                            color: accentColor, fontWeight: FontWeight.normal))
                  ]))),
                ),
                const SizedBox(height: 100),
              ],
            )),
      ],
    );
  }
}
