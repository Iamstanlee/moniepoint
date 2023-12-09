import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';

class MpButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const MpButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            vertical: MpSpacing.m,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(MpSpacing.xl),
          ),
          backgroundColor: MpColor.secondary500,
        ),
        child: Text(label, style: MpTypography.body2),
      ),
    );
  }
}
