import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:moniepoint/app/home/mockdata/search_data.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/components/search_bar.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';
import 'package:moniepoint/core/extensions/context.extension.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        title: const Hero(
          tag: ValueKey('search_bar'),
          child: MpSearchBar(),
        ),
        leading: IconButton(
          icon: Icon(PhosphorIcons.caretLeft(PhosphorIconsStyle.bold)),
          onPressed: () => context.pop(),
        ),
      ),
      body: Card(
        margin: const EdgeInsets.all(MpSpacing.m),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MpSpacing.s),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.all(MpSpacing.m),
          shrinkWrap: true,
          itemCount: listOfShipping.length,
          itemBuilder: (context, index) {
            final shipping = listOfShipping[index];
            return ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: MpColor.primary500,
                ),
                child: Icon(
                  PhosphorIcons.package(PhosphorIconsStyle.fill),
                  color: MpColor.grey0,
                ),
              ),
              title: Text(shipping.itemName, style: MpTypography.body2),
              subtitle: Text(
                '#${shipping.id} \u2022 ${shipping.source} \u2794 ${shipping.destination}',
                style: MpTypography.body1.withColor(MpColor.grey400),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 0),
        ),
      ).animate().slideY(begin: 0.2, end: 0,curve: Curves.ease),
    );
  }
}
