import 'package:billa_app/core/utils/app_styles.dart';
import 'package:billa_app/core/utils/app_texts.dart';
// ignore: unused_import
import 'package:billa_app/core/utils/assets_utils.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.scaffoldColor,
        body: Center(
          child: Text(
            AppTexts.appName,
            style: AppStyles.title.copyWith(
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
