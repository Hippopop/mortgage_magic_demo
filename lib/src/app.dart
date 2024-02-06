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
      builder: (context, child) {
        /* 
            This step was taken consciously. And it's sole purpose was to make sure that, the app is always pixel perfect
            with the provided figma design. And with the awareness that it's just a demo UI. So this won't hurt 
            accessibility or the inclusiveness of the app.
            *(It still feels crime tho. 😑)        
        */
        final mediaQuery = MediaQuery.of(context);
        return MediaQuery(
          data: mediaQuery.copyWith(
            textScaler: mediaQuery.textScaler.clamp(
              maxScaleFactor: 1,
              minScaleFactor: 1,
            ),
          ),
          child: child ?? const SizedBox.shrink(),
        );
      },
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
