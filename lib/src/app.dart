import 'package:flutter/material.dart';
import 'package:mortgage_magic_demo/src/services/theme/app_theme.dart';

import 'features/homepage/views/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: const HomePage(),
      title: 'Mortgage Magic Demo',
      debugShowCheckedModeBanner: false,
    );
  }
}

class GlobalErrorWidget extends StatelessWidget {
  const GlobalErrorWidget({
    super.key,
    this.error,
    this.stack,
  });

  final Object? error;
  final StackTrace? stack;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Global Error Caught",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                      ),
                      children: [
                        if (error != null)
                          TextSpan(
                            text: " : $error",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  if (stack != null) Text(stack.toString()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
