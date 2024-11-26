import 'package:flutter/material.dart';

class BottomNavItemAttributes {
  const BottomNavItemAttributes({
    required this.index,
    required this.icon,
    required this.labelKey,
    required this.color,
  });

  final int index;
  final IconData icon;
  final String labelKey;
  final Color color;
}
