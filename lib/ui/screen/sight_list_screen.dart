import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/theme/textStyles.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 128,
        title: const Text(
          'Список \nинтересных мест',
          style: sightListScreenTitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SightCard(sight: mocks[0]),
            SightCard(sight: mocks[1]),
            SightCard(sight: mocks[2]),
            SightCard(sight: mocks[3]),
            SightCard(sight: mocks[4]),
            SightCard(sight: mocks[5]),
          ],
        ),
      ),
    );
  }
}
