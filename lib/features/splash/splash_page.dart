import 'dart:developer';

import 'package:bloc_demo_1/core/constants/app_keys.dart';
import 'package:bloc_demo_1/features/auth/login_page.dart';
import 'package:bloc_demo_1/features/on_boarding/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        decideNavogation();
      },
    );
  }

  void decideNavogation() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    log('this is value of alreadyVisited prefs ${prefs.getBool(AppKeys.alreadyVisited)}');

    bool alreadyVisited = prefs.getBool(AppKeys.alreadyVisited) ?? false;

    log('this is isFirstTime $alreadyVisited ');

    if (alreadyVisited) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        ),
      );
      prefs.setBool(AppKeys.alreadyVisited, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}
