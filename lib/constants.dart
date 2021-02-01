import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';

/// App title text
class AppTexts {
  static const appHeader = 'Список\nинтересных мест';
  static const toFavoritesBtnText = 'В избранное';
  static const buildARouteBtnText = 'ПОСТРОИТЬ МАРШРУТ';
  static const toScheduleBtnText = 'В избранное';
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
