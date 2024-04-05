import 'package:flutter/material.dart';
import 'package:parking_app/utils/constants/sizes.dart';
class PSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
  top: pSizes.appBarHeight,
  left: pSizes.defaultSpace,
  bottom: pSizes.defaultSpace,
  right: pSizes.defaultSpace,
  );
}