import 'package:flutter/material.dart';

class MpTypography {
  const MpTypography._();

  static TextStyle body1 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle body2 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle h1 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static TextStyle h2 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static TextStyle label = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}

extension TextStyleExtenstion on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);

  TextStyle withSize(double fontSize) => copyWith(fontSize: fontSize);

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
}
