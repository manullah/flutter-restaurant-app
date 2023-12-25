import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingApp = EdgeInsets.only(
    top: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
  );

  static const EdgeInsetsGeometry paddingAppWithBar = EdgeInsets.only(
    top: TSizes.appBarHeight,
    right: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
  );
}
