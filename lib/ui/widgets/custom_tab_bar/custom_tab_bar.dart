import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';
import 'package:places/ui/widgets/custom_tab_bar/custom_tab.dart';
import 'package:places/ui/widgets/custom_tab_bar/custom_tab_bar_item.dart';

typedef OnTabTap = void Function(int index);

/// Custom tab bar widget with the rounded edges of [CustomTabBarItem]
class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  static const _tabBarHeight = 52.0;

  final List<CustomTabBarItem> items;
  final TabController controller;
  final OnTabTap onTabTap;

  const CustomTabBar({
    Key key,
    @required this.items,
    @required this.controller,
    this.onTabTap,
  }) : assert(items != null && controller != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      child: Container(
        height: _tabBarHeight,
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.all(
            Radius.circular(40.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _getTabs(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_tabBarHeight);

  List<Widget> _getTabs() {
    final List<Widget> tabs = [];
    for (var i = 0; i < items.length; i++) {
      tabs.add(
        CustomTab(
          text: items[i].text,
          isActive: controller.index == i,
          activeTabTextStyle: items[i].activeStyle,
          inactiveTabTextStyle: items[i].inactiveStyle,
          activeBackgroundColor: items[i].activeBackgroundColor,
          inactiveBackgroundColor: items[i].inactiveBackgroundColor,
          onTap: () => onTabTap?.call(i),
        ),
      );
    }
    return tabs;
  }
}
