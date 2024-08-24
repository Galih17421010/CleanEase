import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSize.appBarHeight,
    left: AppSize.defaultSpace,
    bottom: AppSize.defaultSpace,
    right: AppSize.defaultSpace,
  );
}
