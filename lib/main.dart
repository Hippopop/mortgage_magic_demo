import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'src/app.dart';

void main() {
  runZonedGuarded(
    () => runApp(
      const MyApp(),
    ),
    (error, stack) => log(
      "#RootError",
      error: error,
      stackTrace: stack,
    ),
  );
}
