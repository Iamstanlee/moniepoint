import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:moniepoint/core/design_system/color.dart';
import 'package:moniepoint/core/design_system/spacing.dart';
import 'package:moniepoint/core/design_system/typography.dart';

class MpButton extends StatefulWidget {
  final String label;
  final VoidCallback? onPressed;

  const MpButton({super.key, required this.label, this.onPressed});

  @override
  State<MpButton> createState() => _MpButtonState();
}

class _MpButtonState extends State<MpButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {
          _animationController.forward();
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            vertical: MpSpacing.m,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(MpSpacing.xl),
          ),
          backgroundColor: MpColor.secondary500,
        ),
        child: Text(widget.label, style: MpTypography.body2),
      ),
    )
        .animate(
          autoPlay: false,
          controller: _animationController,
          onComplete: (controller) => controller.reverse().then(
                (_) => widget.onPressed?.call(),
              ),
        )
        .scaleXY(end: 0.9, duration: 50.ms);
  }
}
