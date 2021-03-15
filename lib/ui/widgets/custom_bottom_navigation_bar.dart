import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/theme/custom_icons.dart';
import 'package:places/ui/screen/res/themes.dart';

/// Model of the custom navigation bar
/*
ВОПРОС: как можно избавиться от указания цветов везде? По внутренним ощущениям, выглядит не очень
 */
class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconList,
            color: Theme
                .of(context)
                .buttonColor,
          ),
          label: '',
          activeIcon: SvgPicture.asset(
            iconListFull,
            color: Theme
                .of(context)
                .buttonColor,
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
        // _BottomBarIcon(iconName: iconHeart, activeIconName: iconHeartFull,),
      ],
    );
  }
}

// class _BottomBarIcon extends BottomNavigationBarItem {
//   _BottomBarIcon(
//       {Key key, @required this.iconName, @required this.activeIconName,})
//       : assert(
//           icon != null,
//           activeIconName != null,
//         );
//   final String iconName;
//   final String activeIconName;
//   final String label = '';
//   Color iconColor;
//
//   @override
//   BottomNavigationBarItem build(BuildContext context) {
//     return BottomNavigationBarItem(
//       icon: SvgPicture.asset(
//         iconName,
//         color: Theme.of(context).buttonColor,
//       ),
//       label: '',
//       activeIcon: SvgPicture.asset(
//         activeIconName,
//         color: Theme.of(context).buttonColor,
//       ),
//     );
//   }
// }
