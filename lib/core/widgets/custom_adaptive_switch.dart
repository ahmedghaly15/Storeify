import 'package:flutter/material.dart';

class CustomAdaptiveSwitch extends StatelessWidget {
  const CustomAdaptiveSwitch({
    super.key,
    required this.value,
    this.onChanged,
  });

  final bool value;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.white,
      inactiveTrackColor: Colors.white38,
      thumbColor: const WidgetStatePropertyAll(Colors.white),
      activeTrackColor: Colors.white60,
      trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
    );
  }
}
