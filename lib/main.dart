import 'package:flutter/material.dart';
import 'file:///C:/myApps/places/lib/ui/widgets/empty_visited_places.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'file:///C:/myApps/places/lib/ui/sight_card_widgets/sight_card.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';
import 'package:places/ui/widgets/empty_favorites_places.dart';
import 'mocks.dart';

void main() {
  runApp(MyApp());
}

///Startup screen
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VisitingScreen(),
    );
  }
}
