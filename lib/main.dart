
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: AppColors.white,
          fontSize: 48,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.w500
        ),
        bodyLarge: TextStyle(
          color: AppColors.white,
        ),
        titleLarge: TextStyle(
          color: AppColors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500
        )
      )
        ),
      
      
      home:  const HomeScreen(),
    ); 
  }
}
