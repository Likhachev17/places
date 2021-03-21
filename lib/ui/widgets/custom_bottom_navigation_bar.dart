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
        // _BottomBarItem(iconName: iconHeart, activeIconName: iconHeartFull),
      ],
    );
  }
}
// Пытаюсь сделать переиспользуемый элемент, но не очень получается:(
// class _BottomBarItem extends BottomNavigationBarItem {
//   String iconName;
//   String activeIconName;
//   _BottomBarItem({
//     Key key,
//     @required this.iconName,
//     @required this.activeIconName,
//   }) : assert(
//           iconName != null,
//           activeIconName != null,
//         );
//
//   BottomNavigationBarItem build(BuildContext context) {
//     return BottomNavigationBarItem(
//       icon: SvgPicture.asset(
//         iconHeart,
//         // color: Theme.of(context).buttonColor,
//       ),
//       label: '',
//       activeIcon: SvgPicture.asset(
//         activeIconName,
//         // color: Theme.of(context).buttonColor,
//       ),
//     );
//   }
// }
