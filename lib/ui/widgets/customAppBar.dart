import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  //Custom app bar parameters
  final Widget title;

  const CustomAppBar({Key key, @required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(
      140); //Подскажите пожалуйста, почему только при 140 виджет отрисовывается нормально?

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
