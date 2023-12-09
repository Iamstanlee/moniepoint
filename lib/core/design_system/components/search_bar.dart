import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MpSearchBar extends StatelessWidget {
  final String? searchHint;
  final VoidCallback? onPressed;

  const MpSearchBar({this.searchHint, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(MpSpacing.xl),
      child: TextField(
        readOnly: onPressed != null,
        onTap: onPressed,
        decoration: InputDecoration(
          hintText: searchHint ?? 'Search',
          filled: true,
          contentPadding: EdgeInsets.zero,
          fillColor: MpColor.grey0,
          prefixIcon: Icon(PhosphorIcons.magnifyingGlass()),
          prefixIconColor: MpColor.primary700,
          suffixIcon: Container(
            height: 37,
            width: 37,
            margin: const EdgeInsets.symmetric(horizontal: MpSpacing.s),
            decoration: BoxDecoration(
              color: MpColor.secondary500,
              borderRadius: BorderRadius.circular(MpSpacing.xl),
            ),
            child: Icon(
              PhosphorIcons.scan(),
              color: MpColor.grey0,
            ),
          ),
          suffixIconConstraints: const BoxConstraints(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(MpSpacing.xl),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(MpSpacing.xl),
          ),
        ),
      ),
    );
  }
}
