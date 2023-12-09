import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/color.dart';

class MpAvatar extends StatelessWidget {
  final double size;

  const MpAvatar.small({super.key}) : size = 32;

  const MpAvatar.medium({super.key}) : size = 42;

  const MpAvatar.large({super.key}) : size = 64;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircleAvatar(
        backgroundColor: MpColor.grey100,
        radius: size / 2,
      ),
    );
  }
}
