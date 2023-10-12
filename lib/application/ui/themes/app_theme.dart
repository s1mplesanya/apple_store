import 'package:apple_store/application/ui/themes/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData dark(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: 'Poppins',
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        surfaceTintColor: AppColors.black,
        foregroundColor: AppColors.black,
      ),
      // textTheme: const TextTheme(
      //   bodyLarge: TextStyle(color: AppColors.gray2),
      //   bodyMedium: TextStyle(color: AppColors.gray2),
      //   bodySmall: TextStyle(color: AppColors.gray2),
      // ),
      // primaryTextTheme: const TextTheme(
      //   displayLarge: TextStyle(color: AppColors.gray2),
      // ),
      // textSelectionTheme: const TextSelectionThemeData(
      //   cursorColor: AppColors.gray2, // Замените цвет курсора на белый
      //   selectionColor: AppColors.gray0,
      //   selectionHandleColor:
      //       AppColors.gray2, // Замените цвет ручки выделения на белый
      // ),
      // cupertinoOverrideTheme: const CupertinoThemeData(
      //   primaryColor: AppColors.gray0, // Замените основной цвет на белый
      // ),
      useMaterial3: true,
      colorSchemeSeed: AppColors.black,
      // inputDecorationTheme: InputDecorationTheme(
      //   focusedBorder: OutlineInputBorder(
      //     // borderSide: const BorderSide(
      //     //   color: AppColors.gray0,
      //     // ),
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   enabledBorder: OutlineInputBorder(
      //     // borderSide: const BorderSide(
      //     //   color: AppColors.gray0,
      //     // ),
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   border: OutlineInputBorder(
      //     // borderSide: const BorderSide(color: AppColors.gray0),
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      // ),
    );
  }

  static ButtonStyle mainButtonStyle(BuildContext context) {
    return const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(AppColors.black),
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(vertical: 10),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(17)),
        ),
      ),
    );
  }
}
