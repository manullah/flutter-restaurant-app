import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/constants/colors.dart';
import 'package:restaurant_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:restaurant_app/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    inputDecorationTheme: TTextFieldTheme.lighTTextFieldTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );
}
