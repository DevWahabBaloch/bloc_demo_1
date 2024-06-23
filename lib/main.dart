import 'package:bloc_demo_1/config/multi_bloc_provider_widget.dart';
import 'package:bloc_demo_1/core/di/service_locator.dart';
import 'package:bloc_demo_1/features/auth/login_page.dart';
import 'package:bloc_demo_1/features/settings/pages/settings_page.dart';
import 'package:bloc_demo_1/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProviderWidget(
      child: MaterialApp(
        title: 'Bloc Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashPage(),
      ),
    );
  }
}
