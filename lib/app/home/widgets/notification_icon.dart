import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      margin: const EdgeInsets.only(right: MpSpacing.s, top: MpSpacing.s),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(
        PhosphorIcons.bell(),
        color: MpColor.black50,
      ),
    );
  }
}
