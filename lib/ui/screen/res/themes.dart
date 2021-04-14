import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/text_styles.dart';

final lightTheme = ThemeData.light().copyWith(
  primaryColor: AppColors.ltPrimaryColorDark,
  accentColor: AppColors.ltAccentColor,
  disabledColor: AppColors.inactiveBlack,
  cardColor: AppColors.ltCardBackground,
  backgroundColor: AppColors.ltPrimaryColorDark,
  scaffoldBackgroundColor: AppColors.white,
  buttonColor: AppColors.ltPrimaryColor,
  hoverColor: AppColors.white,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.ltAccentColor,
    foregroundColor: AppColors.ltCardBackground,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.white,
    unselectedItemColor: AppColors.ltPrimaryColorLight,
    selectedItemColor: AppColors.ltPrimaryColorDark,
  ),
  textTheme: TextTheme(
    headline1: largeTitleTextStyle.copyWith(color: AppColors.white),
    headline2: titleTextStyle.copyWith(),
    subtitle1: subtitle1TextStyle,
    subtitle2: subtitle2TextStyle,
    bodyText1: body1BoldTextStyle,
    bodyText2: body2NormalTextStyle,
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  primaryColor: AppColors.dtPrimaryColor,
  accentColor: AppColors.dtGreen,
  disabledColor: AppColors.inactiveBlack,
  scaffoldBackgroundColor: AppColors.dtPrimaryColor,
  cardColor: AppColors.dtPrimaryColorDark,
  backgroundColor: AppColors.dtPrimaryColor,
  buttonColor: AppColors.white,
  hoverColor: AppColors.dtSecondaryColor,
  textTheme: TextTheme(
    headline1: largeTitleTextStyle.copyWith(color: AppColors.white),
    headline2: titleTextStyle.copyWith(),
    subtitle1: subtitle1TextStyle,
    subtitle2: subtitle2TextStyle,
    bodyText1: body1BoldTextStyle,
    bodyText2: body2NormalTextStyle,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.dtPrimaryColor,
    unselectedItemColor: AppColors.inactiveBlack,
    selectedItemColor: AppColors.white,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: AppColors.dtPrimaryColorDark,
    textTheme: ButtonTextTheme.primary,
  ),
);
