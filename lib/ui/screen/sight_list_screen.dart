import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/sight_card_widgets/sight_card.dart';
import 'package:places/ui/widgets/app_bar_title.dart';
import 'package:places/ui/widgets/custom_app_bar.dart';
import 'package:places/ui/widgets/custom_bottom_navigation_bar.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

///Screen with a list of sights
class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppBarTitle(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: mocks.map((m) => SightCard(sight: m)).toList(),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
