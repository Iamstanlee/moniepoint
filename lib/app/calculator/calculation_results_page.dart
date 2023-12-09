import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/components/button.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';
import 'package:moniepoint/core/extensions/context.extension.dart';

class CalculationResultsPage extends StatefulWidget {
  const CalculationResultsPage({super.key});

  @override
  State<CalculationResultsPage> createState() => _CalculationResultsPageState();
}

class _CalculationResultsPageState extends State<CalculationResultsPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _countController;

  @override
  void initState() {
    super.initState();
    _countController = AnimationController(
      duration: 2.seconds,
      upperBound: 1474,
      vsync: this,
    )..forward();
  }

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
            AnimatedBuilder(
              animation: _countController,
              builder: (context, _) => Text(
                '\$${_countController.value.toInt()} USD',
                textAlign: TextAlign.center,
                style: MpTypography.h1.withColor(
                  Colors.greenAccent.withGreen(225),
                ),
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
