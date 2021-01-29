import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';

/// App title text
class AppTexts {
  static const appHeader = 'Список\nинтересных мест';
}

/// Sight card decorations
class AppDecorations {
  static const cardDecoration = BoxDecoration(
    color: AppColors.cardBackground,
    borderRadius: BorderRadius.all(
      Radius.circular(16),
    ),
  );
}
