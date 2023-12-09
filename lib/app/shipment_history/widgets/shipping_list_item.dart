import 'package:flutter/material.dart';
import 'package:moniepoint/app/shipment_history/enums/shipping_status.enum.dart';
import 'package:moniepoint/app/shipment_history/extensions/shipping_status.extension.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';

class ShippingListItem extends StatelessWidget {
  final ShippingStatus status;

  const ShippingListItem(this.status, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.08,
      child: Padding(
        padding: const EdgeInsets.all(MpSpacing.m),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _StatusInfoContainer(status),
                  const SizedBox(height: MpSpacing.xs),
                  Text('Arriving today!', style: MpTypography.h1),
                  const SizedBox(height: MpSpacing.xs),
                  Text(
                    'Your delivery #MP-123456789 from Berlin, is arriving today',
                    style: MpTypography.body1.withColor(MpColor.grey400),
                  ),
                  const SizedBox(height: MpSpacing.s),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '\$650 USD ',
                          style: MpTypography.body2
                              .withSize(14)
                              .withColor(MpColor.primary700),
                        ),
                        TextSpan(
                          text: '\u2022 Sept 20, 2023',
                          style: MpTypography.label.withColor(MpColor.grey500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'res/images/package.png',
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusInfoContainer extends StatelessWidget {
  final ShippingStatus status;

  const _StatusInfoContainer(this.status);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MpSpacing.m,
        vertical: MpSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: MpColor.grey100,
        borderRadius: BorderRadius.circular(MpSpacing.xl),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            status.icon,
            color: status.color,
            size: 16,
          ),
          const SizedBox(width: MpSpacing.xs),
          Text(
            status.statusStr,
            style: MpTypography.label.withColor(status.color),
          ),
        ],
      ),
    );
  }
}
