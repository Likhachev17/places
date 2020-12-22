import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework 4.1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SightListScreen(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  int buildCounter = 0;

  @override
  Widget build(BuildContext context) {
    buildCounter++;
    print('количество вызовов build() $buildCounter раз');
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}

class MySecondWidget extends StatefulWidget {
  @override
  _MySecondWidgetState createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
  int buildCounter = 0;

  Type getContextType() {
    return context.runtimeType;
  }

  @override
  Widget build(BuildContext context) {
    print(buildCounter++);
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}
