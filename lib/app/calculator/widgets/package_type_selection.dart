import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PackageTypeSelection extends StatelessWidget {
  const PackageTypeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.08,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MpSpacing.m),
      ),
      child: Padding(
        padding: const EdgeInsets.all(MpSpacing.m),
        child: Row(children: [
          Icon(
            PhosphorIcons.package(PhosphorIconsStyle.fill),
            color: MpColor.grey500,
          ),
          const SizedBox(
            height: MpSpacing.l,
            child: VerticalDivider(
              thickness: 0.8,
            ),
          ),
          Text(
            'Box',
            style: MpTypography.h2,
          ),
          const Spacer(),
          Icon(PhosphorIcons.caretDown()),
        ]),
      ),
    );
  }
}
