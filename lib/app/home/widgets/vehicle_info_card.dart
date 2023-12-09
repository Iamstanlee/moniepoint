import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:moniepoint/app/home/mockdata/vehicle_data.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';

class VehicleInfoCard extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleInfoCard(this.vehicle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.08,
      child: SizedBox(
        width: 148,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(MpSpacing.s),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vehicle.name,
                    style: MpTypography.body2.bold,
                  ),
                  Text(
                    vehicle.info,
                    style: MpTypography.label.withColor(MpColor.grey400),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: -MpSpacing.xl,
              child: Image.asset(
                vehicle.imageUrl,
                height: 148,
              ),
            ),
          ],
        ),
      ),
    ).animate().slideX(begin: 0.5, end: 0);
  }
}
