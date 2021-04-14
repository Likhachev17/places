import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/theme/custom_icons.dart';
import 'package:places/ui/screen/res/themes.dart';

/// Model of the custom bottom navigation bar

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (i) => print('Bottom navigation bar tapped'),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconList,
            color: Theme.of(context).buttonColor,
          ),
          label: '',
          activeIcon: SvgPicture.asset(
            iconListFull,
            color: Theme.of(context).buttonColor,
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconMap,
            color: Theme
                .of(context)
                .buttonColor,
          ),
          label: '',
          activeIcon: SvgPicture.asset(
            iconMapFull,
            color: Theme
                .of(context)
                .buttonColor,
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconHeart,
            color: Theme
                .of(context)
                .buttonColor,
          ),
          label: '',
          activeIcon: SvgPicture.asset(
            iconHeartFull,
            color: Theme
                .of(context)
                .buttonColor,
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconSettings,
            color: Theme
                .of(context)
                .buttonColor,
          ),
          label: '',
          activeIcon: SvgPicture.asset(
            iconSettingsFull,
            color: Theme
                .of(context)
                .buttonColor,
          ),
        ),
      ],
    );
  }
}
