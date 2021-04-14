import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/theme/custom_icons.dart';
import 'package:places/ui/screen/res/themes.dart';
import 'package:places/ui/widgets/sight_card_icon_buttons.dart';
import 'package:places/theme/colors.dart';

var iconButtonHeart = IconButton(
  icon: SvgPicture.asset(iconHeart),
  onPressed: () => print('button "Heart" tapped'),
  color: AppColors.white,
);
var iconButtonCalendar = IconButton(
  icon: SvgPicture.asset(iconCalendar),
  onPressed: () => print('button "Calendar" tapped'),
  color: AppColors.white,
);
var iconButtonRemove = IconButton(
  icon: SvgPicture.asset(iconRemove),
  onPressed: () => print('button "Remove" tapped'),
  color: AppColors.white,
);
var iconButtonShare = IconButton(
  icon: SvgPicture.asset(iconShare),
  onPressed: () => print('button "Share" tapped'),
  color: AppColors.white,
);
