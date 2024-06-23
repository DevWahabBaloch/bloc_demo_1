import 'package:bloc_demo_1/core/app_button.dart';
import 'package:bloc_demo_1/features/auth/login_page.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome for the very first time',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 50.0),
            AppButton.text(
              title: 'Goto Login',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
