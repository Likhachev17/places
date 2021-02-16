import 'package:flutter/material.dart';

/// This widget needs for group cards in TabController with fixed length
class SightListWidget extends StatelessWidget {
  static const spaceHeight = 16.0;

  final List<Widget> children;
  final EdgeInsetsGeometry padding;

  const SightListWidget({
    Key key,
    @required this.children,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),
  }) : assert(children != null);

  @override
  Widget build(BuildContext context) {
    final List<Widget> childrenWithSpacing = [];
    for (var i = 0; i < children.length; i++) {
      childrenWithSpacing.add(children[i]);
      if (i != children.length - 1) {
        childrenWithSpacing.add(
          SizedBox(
            height: spaceHeight,
          ),
        );
      }
    }

    return SingleChildScrollView(
      child: Padding(
        padding: padding,
        child: Column(
          children: childrenWithSpacing,
        ),
      ),
    );
  }
}
