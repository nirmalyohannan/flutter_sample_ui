import 'package:flutter/material.dart';
import 'package:unibit_ui/config/app_colors.dart';
import 'package:unibit_ui/screens/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: AppColors.primaryColor, fontFamily: 'Acumin Pro'),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
