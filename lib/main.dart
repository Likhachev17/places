import 'package:flutter/material.dart';
import 'package:places/ui/screen/SightDetails.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

import 'mocks.dart';

void main() {
  runApp(MyApp());
}

///Startup screen
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SightDetails(sight: mocks[0]),
    );
  }
}
