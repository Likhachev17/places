import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';

/// This widget needs for group cards in TabController with fixed length
class SightListWidget extends StatelessWidget {
  final List<Widget> children;

  const SightListWidget({
    Key key,
    @required this.children,
  }) : assert(children != null);

  @override
  Widget build(BuildContext context) {
    final List<Widget> cardListMember = [];
    for (var i = 0; i < children.length; i++) {
      cardListMember.add(children[i]);
    }

    return SingleChildScrollView(
      child: Column(
        children: cardListMember,
      ),
    );
  }
}
