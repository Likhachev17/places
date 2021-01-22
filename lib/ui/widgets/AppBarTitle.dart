import 'package:flutter/material.dart';
import 'package:places/constants.dart';
import 'package:places/theme/textStyles.dart';

class AppBarTitle extends StatelessWidget {
  // This class responsible for AppBar parameters
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTexts.appHeader,
      style: sightListScreenTitle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
