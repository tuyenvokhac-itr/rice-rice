import 'package:flutter/material.dart';
import 'package:rice_rice/config/colors/app_colors.dart';
import 'package:rice_rice/config/styles/app_text_styles.dart';

const double appBarHeight = 64;
const double bottomAppBarHeight = 52;

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: appBarTheme,
  bottomAppBarTheme: bottomAppBarTheme,
  floatingActionButtonTheme: floatingActionButtonThemeData,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
  useMaterial3: false,
);

AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: Colors.white,
  foregroundColor: AppColors.bluePrimary,
  shape: Border(
    bottom: BorderSide(
      color: AppColors.greyBackground,
      width: 1,
    ),
  ),
  titleTextStyle: AppTextStyles.medium(),
  centerTitle: true,
  toolbarHeight: appBarHeight,
  elevation: 0,
);

BottomAppBarTheme bottomAppBarTheme = BottomAppBarTheme(
  color: AppColors.bluePrimary,
  shadowColor: AppColors.blueSecondary,
  shape: const CircularNotchedRectangle(),
  height: bottomAppBarHeight,
  elevation: 0,
);

FloatingActionButtonThemeData floatingActionButtonThemeData =
    const FloatingActionButtonThemeData(
  backgroundColor: Colors.transparent,
  foregroundColor: Colors.transparent,
  shape: CircleBorder(),
  elevation: 0,
);
