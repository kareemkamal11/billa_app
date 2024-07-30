import 'package:flutter/material.dart';

import 'view/splash/splash_screen.dart';

void main() {
  runApp(const BillApp());
}

class BillApp extends StatelessWidget {
  const BillApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
