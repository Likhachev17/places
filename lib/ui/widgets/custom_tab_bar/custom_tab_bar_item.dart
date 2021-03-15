import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/text_styles.dart';

/// Model of the custom tab bar item
class CustomTabBarItem {
  final String text;
  final Color activeBackgroundColor;
  final Color inactiveBackgroundColor;
  final TextStyle activeStyle;
  final TextStyle inactiveStyle;

  CustomTabBarItem({
    @required this.text,
    this.activeStyle = visitingScreenActiveTabTextStyle,
    this.inactiveStyle = visitingScreenInactiveTabTextStyle,
    this.activeBackgroundColor = AppColors.primary,
    this.inactiveBackgroundColor = AppColors.transparent,
  }) : assert(text != null);
}
