import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/widgets/AppBarTitle.dart';
import 'package:places/ui/widgets/customAppBar.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  // This is "Welcome" screen
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
    );
  }
}
