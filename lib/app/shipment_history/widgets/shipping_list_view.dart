import 'package:flutter/material.dart';
import 'package:moniepoint/app/shipment_history/enums/shipping_status.enum.dart';
import 'package:moniepoint/app/shipment_history/extensions/shipping_status.extension.dart';
import 'package:moniepoint/app/shipment_history/widgets/shipping_list_item.dart';
import 'package:moniepoint/core/design_system/spacing.dart';

class ShippingListView extends StatelessWidget {
  final ShippingStatus status;

  const ShippingListView(this.status, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: status.count,
      itemBuilder: (_, __) => ShippingListItem(status),
      separatorBuilder: (_, __) => const SizedBox(height: MpSpacing.s),
    );
  }
}
