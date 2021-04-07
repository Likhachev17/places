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
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: titleTextStyle,
      primary: AppColors.white,
      minimumSize: Size.fromHeight(48.0),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: AppColors.ltPrimaryColor,
      textStyle: body2NormalTextStyle,
    ),
  ),
  sliderTheme: SliderThemeData(
    trackHeight: 2.0,
    thumbColor: AppColors.white,
    overlayColor: AppColors.transparent,
    activeTrackColor: AppColors.ltAccentColor,
    inactiveTrackColor: AppColors.inactiveBlack,
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  primaryColor: AppColors.dtPrimaryColor,
  accentColor: AppColors.dtAccentColor,
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
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: titleTextStyle,
      primary: AppColors.dtPrimaryColor,
      minimumSize: Size.fromHeight(48.0),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: AppColors.dtPrimaryColor,
      textStyle: body2NormalTextStyle,
    ),
  ),
  sliderTheme: SliderThemeData(
    trackHeight: 2.0,
    thumbColor: AppColors.white,
    overlayColor: AppColors.transparent,
    activeTrackColor: AppColors.ltAccentColor,
    inactiveTrackColor: AppColors.inactiveBlack,
  ),
);
