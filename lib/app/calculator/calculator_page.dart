import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:moniepoint/app/calculator/calculation_results_page.dart';
import 'package:moniepoint/app/calculator/widgets/heading_text.dart';
import 'package:moniepoint/app/calculator/widgets/package_type_selection.dart';
import 'package:moniepoint/app/calculator/widgets/text_field.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/components/button.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';
import 'package:moniepoint/core/extensions/context.extension.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate', style: MpTypography.body2),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(MpSpacing.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeadingText('Destination'),
            Card(
              elevation: 0.08,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(MpSpacing.m),
              ),
              child: Padding(
                padding: const EdgeInsets.all(MpSpacing.m),
                child: Column(
                  children: [
                    TextFieldWithIconPrefix(
                      hintText: 'From',
                      icon: PhosphorIcons.downloadSimple(),
                    ),
                    const SizedBox(height: MpSpacing.s),
                    TextFieldWithIconPrefix(
                      hintText: 'To',
                      icon: PhosphorIcons.uploadSimple(),
                    ),
                    const SizedBox(height: MpSpacing.s),
                    TextFieldWithIconPrefix(
                      hintText: 'Weight in KG',
                      icon: PhosphorIcons.scales(),
                    ),
                  ],
                ),
              ),
            ),
            const HeadingText(
              'Packaging',
              subText: 'Select the type of packaging',
            ),
            const PackageTypeSelection(),
            const HeadingText(
              'Categories',
              subText: 'What are you sending?',
            ),
            Wrap(
              spacing: MpSpacing.xs,
              runSpacing: MpSpacing.xs,
              children: [
                for (final item in _listOfChipItem)
                  FilterChip(
                    selected: _listOfChipItem.indexOf(item) == 0,
                    label: Text(
                      item,
                      style: MpTypography.body1.withColor(
                        _listOfChipItem.indexOf(item) == 0
                            ? MpColor.grey0
                            : MpColor.black500,
                      ),
                    ),
                    side: const BorderSide(
                      color: MpColor.grey400,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MpSpacing.s),
                    ),
                    backgroundColor: MpColor.grey0,
                    selectedColor: MpColor.black500,
                    checkmarkColor: MpColor.grey0,
                    onSelected: (_) {},
                  ),
              ],
            ).animate().slideX(begin: 0.5, end: 0),
            const SizedBox(height: MpSpacing.xl),
            MpButton(
              label: 'Calculate',
              onPressed: () => context.push(const CalculationResultsPage()),
            ),
          ],
        ),
      ).animate().fade(begin: 0.2, end: 1).slideY(begin: 0.2, end: 0),
    );
  }
}

final _listOfChipItem = [
  'Documents',
  'Glass',
  'Liquid',
  'Food',
  'Electronics',
  'Fragile',
  'Others'
];
