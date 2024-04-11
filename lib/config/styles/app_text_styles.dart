import 'package:flutter/material.dart';
import 'package:rice_rice/config/fonts/app_fonts.dart';

class AppTextStyles {
  //Add default color.
  static TextStyle light({
    double fontSize = 14.0,
    Color color = Colors.black,
    String fontFamily = AppFontFamily.fontFamilyCeraPro,
    double? lineHeight,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: AppFontWeight.light,
      color: color,
      height: lineHeight != null ? lineHeight / fontSize : null,
    );
  }

  static TextStyle regular({
    double fontSize = 14.0,
    Color color = Colors.black,
    String fontFamily = AppFontFamily.fontFamilyCeraPro,
    double? lineHeight,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: AppFontWeight.regular,
      color: color,
      height: lineHeight != null ? lineHeight / fontSize : null,
    );
  }

  static TextStyle medium({
    double fontSize = 16.0,
    Color color = Colors.black,
    String fontFamily = AppFontFamily.fontFamilyCeraPro,
    double? lineHeight,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: AppFontWeight.medium,
      color: color,
      height: lineHeight != null ? lineHeight / fontSize : null,
    );
  }

  static TextStyle bold({
    double fontSize = 16.0,
    Color color = Colors.black,
    String fontFamily = AppFontFamily.fontFamilyCeraPro,
    double? lineHeight,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: AppFontWeight.bold,
      color: color,
      height: lineHeight != null ? lineHeight / fontSize : null,
    );
  }
}
