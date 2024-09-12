import 'package:flutter/material.dart';

class SettingItem {
  final String titleKey;
  final Widget trailing;
  final void Function()? onTap;

  const SettingItem( {
    required this.titleKey,
    this.trailing = const Icon(
      Icons.arrow_forward_ios_rounded,
      color: Colors.white,
    ),
    this.onTap,
  });
}
