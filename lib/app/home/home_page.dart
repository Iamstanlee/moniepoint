import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:moniepoint/app/home/mockdata/vehicle_data.dart';
import 'package:moniepoint/app/home/search/search_page.dart';
import 'package:moniepoint/app/home/widgets/appbar_column.dart';
import 'package:moniepoint/app/home/widgets/heading_text.dart';
import 'package:moniepoint/app/home/widgets/notification_icon.dart';
import 'package:moniepoint/app/home/widgets/tracking_shipment_card.dart';
import 'package:moniepoint/app/home/widgets/vehicle_info_card.dart';
import 'package:moniepoint/core/design_system/components/avatar.dart';
import 'package:moniepoint/core/design_system/components/search_bar.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/extensions/context.extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarColumn(),
        leading: const Padding(
          padding: EdgeInsets.only(left: MpSpacing.s, top: MpSpacing.s),
          child: Center(child: MpAvatar.medium()),
        ),
        actions: const [NotificationIcon()],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(88),
          child: Padding(
            padding: const EdgeInsets.all(MpSpacing.m),
            child: Hero(
              tag: const ValueKey('search_bar'),
              child: MpSearchBar(
                searchHint: 'Enter shipping ID',
                onPressed: () => context.push(const SearchPage()),
              ),
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeadingText('Tracking'),
            TrackingShipmentCard(),
            HeadingText('Available Vehicles'),
            _VehicleListView(),
          ],
        ),
      ).animate().fade(begin: 0.2, end: 1).slideY(begin: 0.2, end: 0),
    );
  }
}

class _VehicleListView extends StatelessWidget {
  const _VehicleListView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(
          left: MpSpacing.m,
          right: MpSpacing.m,
          bottom: MpSpacing.m,
        ),
        itemCount: listOfVehicles.length,
        itemBuilder: (context, index) => VehicleInfoCard(
          listOfVehicles[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: MpSpacing.s,
        ),
      ),
    );
  }
}
