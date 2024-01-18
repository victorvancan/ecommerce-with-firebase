import "package:ecommerce/utils/theme/custon_themes/appbar_theme.dart";
import "package:ecommerce/utils/theme/custon_themes/bottom_sheet_theme.dart";
import "package:ecommerce/utils/theme/custon_themes/checkbox_theme.dart";
import "package:ecommerce/utils/theme/custon_themes/chip_theme.dart";
import "package:ecommerce/utils/theme/custon_themes/elevated_button_theme.dart";
import "package:ecommerce/utils/theme/custon_themes/outlined_button_theme.dart";
import "package:ecommerce/utils/theme/custon_themes/text_field_theme.dart";
import "package:ecommerce/utils/theme/custon_themes/text_theme.dart";
import "package:flutter/material.dart";

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.lightelevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutLineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.darkelevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutLineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );

}