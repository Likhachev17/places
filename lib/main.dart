import 'package:flutter/material.dart';
import 'package:places/mocks.dart';

import 'package:places/ui/screen/SightDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SightDetails(
        sight: mocks[0],
      ),
    );
  }
}


