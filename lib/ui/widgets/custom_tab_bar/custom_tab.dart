import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/text_styles.dart';
import 'package:places/ui/widgets/custom_tab_bar/custom_tab_bar.dart';

/// Custom tab widget for [CustomTabBar]
class CustomTab extends StatelessWidget {
  final bool isActive;
  final String text;
  final VoidCallback onTap;

  const CustomTab({
    Key key,
    @required this.isActive,
    @required this.text,
    this.onTap,
  }) : assert(isActive != null && text != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () => onTap?.call(),
      child: Container(
        decoration: BoxDecoration(
          color: isActive
              ? Theme.of(context).buttonColor
              : Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: isActive
                  ? Theme
                  .of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Theme
                  .of(context)
                  .hoverColor)
                  : Theme
                  .of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: AppColors.inactiveBlack),
            ),
          ),
        ),
      ),
    ));
  }
}
