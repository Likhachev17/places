import 'package:flutter/material.dart';

///Custom app bar settings
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  const CustomAppBar({Key key, @required this.title}) : assert(title != null);

  @override
  Size get preferredSize => Size.fromHeight(146);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 64,
            ),
            title,
          ],
        ),
      ),
    );
  }
}
