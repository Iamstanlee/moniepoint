import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';

class HeadingText extends StatelessWidget {
  final String text;

  const HeadingText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MpSpacing.m),
      child: Text(text, style: MpTypography.h1.setSize(18)),
    );
  }
}
