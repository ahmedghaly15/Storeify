import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/widgets/get_back_icon_button.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    this.titleKey,
    this.actions,
    this.titleWidget,
    this.leading,
    this.hasLeading = true,
  });

  final String? titleKey;
  final List<Widget>? actions;
  final Widget? titleWidget;
  final Widget? leading;
  final bool hasLeading;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: titleWidget ?? Text(titleKey == null ? '' : context.tr(titleKey!)),
      leading: hasLeading ? leading ?? const GetBackIconButton() : null,
      actions: actions,
    );
  }
}
