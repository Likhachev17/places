import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyFirstWidget(),
    );
  }
}


class MyFirstWidget extends StatefulWidget {
  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int buildCounter = 0;

  @override
  Widget build(BuildContext context) {
    buildCounter++;
    Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
    print('количество вызовов build() $buildCounter раз');
    return Container();
  }
}






