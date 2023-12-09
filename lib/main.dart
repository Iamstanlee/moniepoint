import 'package:flutter/material.dart';
import 'package:moniepoint/core/app_scaffold.dart';
import 'package:moniepoint/core/constants.dart';
import 'package:moniepoint/core/design_system/theme.dart';

void main() {
  runApp(const MoniePoint());
}

class MoniePoint extends StatelessWidget {
  const MoniePoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MpConstants.appName,
      debugShowCheckedModeBanner: MpConstants.showDebugCheckBanner,
      theme: MpTheme.light,
      home: const AppScaffold(),
    );
  }
}
