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

  static TextStyle itemYearStyle(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.w500,
      height: 12 / 8,
      color: color ?? AppColors.black,
    );
  }

  static TextStyle itemTitleStyle(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 24 / 16,
      color: color ?? AppColors.black,
    );
  }

  static TextStyle mainButtonTextStyle(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      height: 17 / 11,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle titleDetailStyle(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: 29,
      fontWeight: FontWeight.w500,
      height: 44 / 29,
      color: color ?? AppColors.black,
    );
  }

  static TextStyle yearDetailStyle(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      height: 17 / 11,
      color: color ?? AppColors.black,
    );
  }

  static TextStyle priceDetailStyle(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w400,
      height: 32 / 21,
      color: color ?? AppColors.priceColor,
    );
  }

  static TextStyle descriptionDetailStyle(BuildContext context,
      {Color? color}) {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      height: 23 / 15,
      color: color ?? AppColors.priceColor,
    );
  }

  static TextStyle colorTextDetailStyle(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      height: 23 / 15,
      color: color ?? AppColors.priceColor,
    );
  }

  static TextStyle numberTextDetailStyle(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      height: 23 / 15,
      color: color ?? AppColors.priceColor,
    );
  }
}
