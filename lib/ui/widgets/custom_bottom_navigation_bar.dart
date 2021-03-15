import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/theme/custom_icons.dart';

/// Model of the custom navigation bar
class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.secondary,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(iconList),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(iconMap),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconHeartFull,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(iconSettings),
          label: '',
        ),
      ],
    );
  }
}
