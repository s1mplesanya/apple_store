import 'package:apple_store/application/ui/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle iStoreStyle(BuildContext context) {
    return const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      height: 22 / 17,
      fontFamily: 'FuturaMdBT',
      color: AppColors.black,
    );
  }

  static TextStyle list1TextStyle(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 18 / 12,
      color: color ?? AppColors.black,
    );
  }

  static TextStyle list2TextStyle(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      height: 17 / 11,
      color: color ?? AppColors.black,
    );
  }
}
