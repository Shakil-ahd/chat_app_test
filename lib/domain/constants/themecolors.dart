import 'package:chat_app_test/domain/constants/appcolors.dart';
import 'package:flutter/material.dart';

class ThemeColors {
  static final ThemeData lightTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.btnLight),
    ),
    scaffoldBackgroundColor: AppColors.lightTheme,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.textlightTheme),
      bodySmall: TextStyle(color: AppColors.textlightTheme),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.btnDark),
    ),
    scaffoldBackgroundColor: AppColors.darkTheme,
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.textdarkTheme),
      bodySmall: TextStyle(color: AppColors.textdarkTheme),
    ),
  );
}
