import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final String? subText;

  const HeadingText(this.text, {this.subText, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: MpSpacing.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: MpTypography.h1),
          if (subText != null) ...[
            const SizedBox(height: MpSpacing.s),
            Text(subText!, style: MpTypography.body1.withColor(MpColor.grey500)),
          ],
        ],
      ),
    );
  }
}
