import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';

class AppTexts {
  // Here you can change app Title text
  static const appHeader = 'Список\nинтересных мест';
}

class AppDecorations {
  // This class contains SightCard decoration parameters
  static const cardDecoration = BoxDecoration(
    color: AppColors.cardBackground,
    borderRadius: BorderRadius.all(
      Radius.circular(16),
    ),
  );
}
