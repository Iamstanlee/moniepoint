import 'package:flutter/material.dart';
import 'package:moniepoint/app/shipment_history/enums/shipping_status.enum.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

extension ShippingStatusExtension on ShippingStatus {
  String get localizedStr => switch (this) {
        ShippingStatus.all => 'All',
        ShippingStatus.pending => 'Pending',
        ShippingStatus.inProgress => 'In Progress',
        ShippingStatus.cancelled => 'Cancelled',
        ShippingStatus.completed => 'Completed',
      };

  int get count => switch (this) {
        ShippingStatus.all => 20,
        ShippingStatus.pending => 5,
        ShippingStatus.inProgress => 10,
        ShippingStatus.cancelled => 2,
        ShippingStatus.completed => 3,
      };

  String get statusStr => switch (_item) {
        ShippingStatus.all => throw Exception('Invalid status'),
        ShippingStatus.pending => 'pending',
        ShippingStatus.inProgress => 'in-progress',
        ShippingStatus.cancelled => 'cancelled',
        ShippingStatus.completed => 'completed',
      };

  Color get color => switch (_item) {
        ShippingStatus.all => throw Exception('Invalid status'),
        ShippingStatus.pending => Colors.orange,
        ShippingStatus.inProgress => Colors.green,
        ShippingStatus.cancelled => Colors.red,
        ShippingStatus.completed => Colors.green,
      };

  IconData get icon => switch (_item) {
        ShippingStatus.all => throw Exception('Invalid status'),
        ShippingStatus.pending => PhosphorIcons.clock(PhosphorIconsStyle.bold),
        ShippingStatus.inProgress => PhosphorIcons.arrowsClockwise(PhosphorIconsStyle.bold),
        ShippingStatus.cancelled => PhosphorIcons.question(PhosphorIconsStyle.bold),
        ShippingStatus.completed => PhosphorIcons.check(PhosphorIconsStyle.bold),
      };

  ShippingStatus get _item =>
      this == ShippingStatus.all ? ShippingStatus.pending : this;
}
