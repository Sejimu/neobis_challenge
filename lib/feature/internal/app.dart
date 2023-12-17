import 'package:flutter/material.dart';
import 'package:neobis_challenge/feature/presentation/screens/main_screen.dart';
import 'package:neobis_challenge/feature/presentation/themes/app_color.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.scaffoldBgColor),
        home: MainScreen());
  }
}
