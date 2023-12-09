import 'package:flutter/material.dart';
import 'package:moniepoint/core/constants.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/typography.dart';

class MpTheme {
  const MpTheme._();

  static ThemeData get light => ThemeData(
        primaryColor: MpColor.primary500,
        fontFamily: MpConstants.primaryTypeface,
        scaffoldBackgroundColor: MpColor.grey100,
        appBarTheme: const AppBarTheme(
          backgroundColor: MpColor.primary500,
          elevation: 0.0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 2,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: MpColor.primary700,
          unselectedItemColor: MpColor.grey500,
          selectedLabelStyle: MpTypography.body1,
          unselectedLabelStyle: MpTypography.label,
        ),
      );
}
