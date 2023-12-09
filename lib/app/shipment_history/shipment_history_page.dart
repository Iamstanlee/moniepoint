import 'package:flutter/material.dart';
import 'package:moniepoint/app/shipment_history/enums/shipping_status.enum.dart';
import 'package:moniepoint/app/shipment_history/extensions/shipping_status.extension.dart';
import 'package:moniepoint/app/shipment_history/widgets/shipping_list_view.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';

class ShipmentHistoryPage extends StatefulWidget {
  const ShipmentHistoryPage({super.key});

  @override
  State<ShipmentHistoryPage> createState() => _ShipmentHistoryPageState();
}

class _ShipmentHistoryPageState extends State<ShipmentHistoryPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final ValueNotifier<int> _tabNotifier;

  @override
  void initState() {
    super.initState();
    _tabNotifier = ValueNotifier(0);
    _tabController = TabController(
      length: ShippingStatus.values.length,
      vsync: this,
    )..addListener(() {
        _tabNotifier.value = _tabController.index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shipment History', style: MpTypography.body2),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: MpColor.secondary500,
          indicatorWeight: 3,
          tabAlignment: TabAlignment.startOffset,
          isScrollable: true,
          tabs: ShippingStatus.values
              .map(
                (tab) => Tab(
                  child: ValueListenableBuilder(
                    valueListenable: _tabNotifier,
                    builder: (BuildContext context, value, Widget? child) {
                      return _TabHeader(
                        name: tab.localizedStr,
                        count: tab.count,
                        isSelectedTab: _tabController.index == tab.index,
                      );
                    },
                  ),
                ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          for (final status in ShippingStatus.values)
            SingleChildScrollView(
              padding: const EdgeInsets.all(MpSpacing.m),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Shipments', style: MpTypography.h1.withSize(18)),
                  const SizedBox(height: MpSpacing.s),
                  ShippingListView(status),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _TabHeader extends StatelessWidget {
  final String name;
  final int count;
  final bool isSelectedTab;

  const _TabHeader({
    required this.name,
    required this.count,
    required this.isSelectedTab,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name, style: MpTypography.body1.withSize(16)),
        const SizedBox(width: MpSpacing.xs),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 2,
          ),
          decoration: BoxDecoration(
            color: isSelectedTab ? MpColor.secondary500 : MpColor.primary300,
            borderRadius: BorderRadius.circular(MpSpacing.xl),
          ),
          child: Text('$count', style: MpTypography.label),
        )
      ],
    );
  }
}
