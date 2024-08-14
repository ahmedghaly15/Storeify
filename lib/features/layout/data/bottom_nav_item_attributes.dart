import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_item_attributes.freezed.dart';

@freezed
class BottomNavItemAttributes with _$BottomNavItemAttributes {
  const factory BottomNavItemAttributes({
    required int index,
    required IconData icon,
    required String labelKey,
    required Color color,
  }) = _BottomNavItemAttributes;
}
