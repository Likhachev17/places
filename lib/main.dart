import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3.5 homework',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyFirstWidget(),
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
