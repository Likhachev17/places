import 'package:flutter/material.dart';
import 'package:places/ui/widgets/empty_visited_places.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/sight_card_widgets/sight_card.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';
import 'package:places/ui/widgets/empty_favorites_places.dart';
import 'mocks.dart';
import 'package:places/ui/screen/res/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      //home: SightListScreen(),
      home: SightDetails(
        sight: mocks[6],
      ),
      //home: VisitingScreen(),
    );
  }
}
