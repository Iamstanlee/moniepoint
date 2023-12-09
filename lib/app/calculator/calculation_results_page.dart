import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/components/button.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';
import 'package:moniepoint/core/extensions/context.extension.dart';

class CalculationResultsPage extends StatelessWidget {
  const CalculationResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MpColor.grey0,
      body: Padding(
        padding: const EdgeInsets.all(MpSpacing.l),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'res/images/movemate.png',
              width: 170,
            ),
            Image.asset(
              'res/images/package.png',
              width: 200,
            ),
            Text(
              'Total Estimated Amount',
              textAlign: TextAlign.center,
              style: MpTypography.h2,
            ),
            const SizedBox(height: MpSpacing.m),
            Text(
              '\$1474 USD',
              textAlign: TextAlign.center,
              style: MpTypography.h1.withColor(
                Colors.greenAccent.withGreen(225),
              ),
            ),
            const SizedBox(height: MpSpacing.s),
            Text(
              'This amount is estimated and will vary if you change your location or weight of item',
              textAlign: TextAlign.center,
              style: MpTypography.body1.withColor(MpColor.grey400),
            ),
            const SizedBox(height: MpSpacing.xl),
            MpButton(
              label: 'Back to home',
              onPressed: () => context.popUntilHome(),
            )
          ],
        ),
      ),
    );
  }
}
