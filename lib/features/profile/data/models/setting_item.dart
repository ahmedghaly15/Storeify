import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_item.freezed.dart';

@freezed
class SettingItem with _$SettingItem {
  const factory SettingItem({
    required String titleKey,
    @Default(
      Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.white,
        size: 16.0,
      ),
    )
    Widget trailing,
    void Function()? onTap,
  }) = _SettingItem;
}
