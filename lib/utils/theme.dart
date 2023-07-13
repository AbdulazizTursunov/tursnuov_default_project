import 'package:flutter/material.dart';

import 'app_colors.dart';

class TxtTheme{
  static ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      //display
      displayLarge: TextStyle(
          color: AppColors.white,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontFamily: "Inter"),
      displayMedium: TextStyle(
          color: AppColors.white,
          fontSize: 45,
          fontWeight: FontWeight.w700,
          fontFamily: "Inter"),
      displaySmall: TextStyle(
          color: AppColors.white,
          fontSize: 36,
          fontWeight: FontWeight.w600,
          fontFamily: "Inter"),
      //headline
      headlineLarge: TextStyle(
          color: AppColors.white,
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: "Inter"),
      headlineMedium: TextStyle(
          color: AppColors.white,
          fontSize: 28,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter"),
      headlineSmall: TextStyle(
          color: AppColors.white,
          fontSize: 24,
          fontWeight: FontWeight.w400,
          fontFamily: "Inter"),

      //title
      titleLarge: TextStyle(
          color: AppColors.white,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: "Inter"),
      titleMedium: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: "Inter"),
      titleSmall: TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter"),
      //label
      labelLarge: TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: "Inter"),
      labelMedium: TextStyle(
          color: AppColors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter"),
      labelSmall: TextStyle(
          color: AppColors.white,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter"),
      //body
      bodySmall: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter"),
      bodyMedium: TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter"),
      bodyLarge: TextStyle(
          color: AppColors.white,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),
    ),
  );
}