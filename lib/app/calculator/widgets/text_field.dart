import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';

class TextFieldWithIconPrefix extends StatelessWidget {
  final IconData icon;
  final String hintText;

  const TextFieldWithIconPrefix({
    required this.icon,
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: MpColor.grey200.withOpacity(0.6),
        filled: true,
        contentPadding: const EdgeInsets.all(MpSpacing.s),
        prefixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(MpSpacing.m, 0, MpSpacing.s, 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: MpColor.grey500,
              ),
              const SizedBox(
                height: MpSpacing.l,
                child: VerticalDivider(
                  thickness: 0.8,
                ),
              )
            ],
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MpSpacing.s),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
