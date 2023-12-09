import 'package:flutter/material.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class TrackingShipmentCard extends StatelessWidget {
  const TrackingShipmentCard({super.key});

  @override
  Widget build(BuildContext context) => Card(
        elevation: 0.08,
        margin: const EdgeInsets.symmetric(horizontal: MpSpacing.m),
        child: Column(
          children: [
            ListTile(
              trailing: Icon(
                PhosphorIcons.truck(),
                size: 32,
                color: Colors.brown.shade800,
              ),
              title: Text(
                'Shipment number',
                style: MpTypography.label.withColor(MpColor.grey500),
              ),
              subtitle: Text(
                'MP-1234567890',
                style: MpTypography.h2.withColor(MpColor.black500).bold,
              ),
            ),
            const Divider(),
            GridView(
              padding: const EdgeInsets.all(MpSpacing.s),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 5,
                mainAxisSpacing: MpSpacing.xl,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _InfoItem(
                  label: 'Sender',
                  value: 'Atlanta, 900192',
                  icon: PhosphorIcons.package(PhosphorIconsStyle.duotone),
                  iconColor: Colors.red.withOpacity(0.5),
                ),
                _InfoItem(
                  label: 'Time',
                  valueWidget: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 6.5,
                        width: 6.5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: const SizedBox.expand(),
                      ),
                      const SizedBox(width: MpSpacing.xs),
                      Text('2 - 3 days',
                          style: MpTypography.body1.withSize(16)),
                    ],
                  ),
                ),
                _InfoItem(
                  label: 'Receiver',
                  value: 'Lagos, 9192',
                  icon: PhosphorIcons.package(PhosphorIconsStyle.duotone),
                  iconColor: Colors.green.withOpacity(0.5),
                ),
                const _InfoItem(
                  label: 'Status',
                  value: 'Waiting to collect',
                ),
              ],
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(MpSpacing.s),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add, color: MpColor.secondary500),
                  const SizedBox(width: MpSpacing.xs),
                  Text(
                    'Add Stop',
                    style: MpTypography.body2.withColor(MpColor.secondary500),
                  ),
                ],
              ),
            )
          ],
        ),
      );
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String? value;
  final Widget? valueWidget;
  final Color? iconColor;
  final IconData? icon;

  const _InfoItem({
    required this.label,
    this.value,
    this.iconColor,
    this.icon,
    this.valueWidget,
  }) : assert(value != null || valueWidget != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null)
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconColor,
            ),
            child: Icon(
              icon!,
              color: MpColor.grey0,
            ),
          ),
        const SizedBox(width: MpSpacing.s),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: MpTypography.label.withColor(MpColor.grey500),
              ),
              valueWidget ??
                  Text(
                    value!,
                    style: MpTypography.body1.withSize(16),
                  ),
            ],
          ),
        ),
      ],
    );
  }
}
