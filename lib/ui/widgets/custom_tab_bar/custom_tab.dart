import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/text_styles.dart';
import 'package:places/ui/widgets/custom_tab_bar/custom_tab_bar.dart';

/// Custom tab widget for [CustomTabBar], with active or inactive state
class CustomTab extends StatelessWidget {
  final Color activeBackgroundColor;
  final Color inactiveBackgroundColor;
  final TextStyle activeTabTextStyle;
  final TextStyle inactiveTabTextStyle;
  final bool isActive;
  final String text;
  final VoidCallback onTap;

  const CustomTab({
    Key key,
    @required this.isActive,
    @required this.text,
    this.activeTabTextStyle = visitingScreenActiveTabTextStyle,
    this.inactiveTabTextStyle = visitingScreenInactiveTabTextStyle,
    this.activeBackgroundColor = AppColors.primary,
    this.inactiveBackgroundColor = AppColors.transparent,
    this.onTap,
  }) : assert(isActive != null && text != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () => onTap?.call(),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: isActive ? activeBackgroundColor : inactiveBackgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: isActive ? activeTabTextStyle : inactiveTabTextStyle,
            ),
          ),
        ),
      ),
    ));
  }
}
