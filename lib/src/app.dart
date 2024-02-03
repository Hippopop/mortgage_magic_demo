import 'package:flutter/material.dart';

import 'features/dashboard/views/dashboard.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mortgage Magic Demo',
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
