import 'package:flutter/material.dart';
import 'package:moniepoint/app/calculator/calculator_page.dart';
import 'package:moniepoint/app/home/home_page.dart';
import 'package:moniepoint/app/shipment_history/shipment_history_page.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/typography.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

final List<Widget> _tabs = [
  const HomePage(),
  const CalculatorPage(),
  const ShipmentHistoryPage(),
  const _UnImplementedPage(),
];

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  late final PageController pageController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void _changeTabIndex(int index) {
    setState(() => _currentTabIndex = index);
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        onTap: _changeTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: PhosphorIcon(PhosphorIcons.houseSimple()),
            activeIcon: PhosphorIcon(
              PhosphorIcons.houseSimple(PhosphorIconsStyle.duotone),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: PhosphorIcon(PhosphorIcons.calculator()),
            activeIcon: PhosphorIcon(
              PhosphorIcons.calculator(PhosphorIconsStyle.duotone),
            ),
            label: "Calculate",
          ),
          BottomNavigationBarItem(
            icon: PhosphorIcon(PhosphorIcons.timer()),
            activeIcon: PhosphorIcon(
              PhosphorIcons.timer(PhosphorIconsStyle.duotone),
            ),
            label: "Shipment",
          ),
          BottomNavigationBarItem(
            icon: PhosphorIcon(PhosphorIcons.person()),
            activeIcon: PhosphorIcon(
              PhosphorIcons.person(PhosphorIconsStyle.duotone),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class _UnImplementedPage extends StatelessWidget {
  const _UnImplementedPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Nothing to see here.",
          style: MpTypography.body1.withColor(MpColor.black50).withSize(18),
        ),
      ),
    );
  }
}
