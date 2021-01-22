import 'package:flutter/material.dart';
import 'package:places/ui/screen/SightDetails.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

import 'mocks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Here you can change home screen
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SightDetails(
        sight: mocks[0],
      ),
    );
  }
}
