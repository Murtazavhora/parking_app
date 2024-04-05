import 'package:flutter/material.dart';
import 'package:parking_app/utils/theme/custom_themes/text_theme.dart';
import 'package:parking_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:parking_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:parking_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:parking_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:parking_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:parking_app/utils/theme/custom_themes/text_field_theme.dart';
class pApptheme{
  pApptheme._();
  static ThemeData lightTheme =ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
      brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: pTextTheme.lightTextTheme,
    elevatedButtonTheme: pEleveatedbuttonTheme.lightElevatedButtonTheme,
    appBarTheme: pAppbarTheme.lightAppBartheme,
    checkboxTheme: pCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: pBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: pTextFormFieldTheme.lightInputDecorationTheme,
    chipTheme: pChipTheme.lightChipTheme,
  );
  static ThemeData darkTheme =ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: pTextTheme.darkTextTheme,
    elevatedButtonTheme: pEleveatedbuttonTheme.darkElevatedButtonTheme,
    appBarTheme: pAppbarTheme.darkAppbarTheme,
    checkboxTheme: pCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: pBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: pTextFormFieldTheme.darkInputDecorationTheme,
    chipTheme: pChipTheme.darkChipTheme,
  );
}