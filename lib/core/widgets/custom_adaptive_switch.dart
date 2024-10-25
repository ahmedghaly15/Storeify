import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      activeTrackColor: Colors.white60,
      trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
      thumbColor: const WidgetStatePropertyAll(Colors.white),
      trackColor:
          WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white60;
        }
        return Colors.white38;
      }),
      thumbIcon:
          WidgetStateProperty.resolveWith<Icon?>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return Icon(Icons.check, color: Colors.white, size: 20.0.h);
        }
        return Icon(Icons.close, color: Colors.white, size: 20.0.h);
      }),
    );
  }
}
