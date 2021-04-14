import 'package:flutter/material.dart';
import 'package:places/constants.dart';
import 'package:places/theme/colors.dart';
import 'package:places/ui/sight_card_widgets/sight_card.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widgets/custom_tab_bar/custom_tab_bar.dart';
import 'package:places/ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:places/ui/widgets/sight_list_widget.dart';

/// Model of Visiting Screen
class VisitingScreen extends StatefulWidget {
  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    _controller.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.visitingAppBarTitle,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(color: Theme.of(context).buttonColor),
        ),
        centerTitle: true,
        backgroundColor: AppColors.transparent,
        elevation: 0,
        bottom: CustomTabBar(
          controller: _controller,
          onTabTap: (index) => _controller.animateTo(index),
          items: [
            CustomTabBarItem(text: AppTexts.visitingWantToVisitTab),
            CustomTabBarItem(text: AppTexts.visitingVisitedTab),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),

      /// List with sight cards on visiting screen
      body: TabBarView(
        controller: _controller,
        children: [
          SightListWidget(
            children: [
              SightCard(
                sight: mocks[6],
              ),
              SightCard(
                sight: mocks[1],
              ),
              SightCard(
                sight: mocks[2],
              ),
            ],
          ),
          SightListWidget(
            children: [
              SightCard(
                sight: mocks[3],
              ),
              SightCard(
                sight: mocks[4],
              ),
              SightCard(
                sight: mocks[5],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

