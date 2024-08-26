import 'package:clean_ease/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: AppColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalPorductShadow = BoxShadow(
    color: AppColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
