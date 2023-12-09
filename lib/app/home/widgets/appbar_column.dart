import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AppBarColumn extends StatelessWidget {
  const AppBarColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Icon(
                PhosphorIcons.navigationArrow(PhosphorIconsStyle.fill),
                size: 12,
                color: MpColor.grey200,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: MpSpacing.xs),
              child: Text(
                'Your location',
                style: MpTypography.label.setColor(MpColor.grey200),
              ),
            ),
          ],
        ),
        const SizedBox(height: MpSpacing.xs),
        Row(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: MpSpacing.xs),
              child: Text(
                'Wertheimer, Illinois',
                style: MpTypography.body2,
              ),
            ),
            Icon(PhosphorIcons.caretDown(), size: 12),
          ],
        ),
      ],
    );
  }
}
