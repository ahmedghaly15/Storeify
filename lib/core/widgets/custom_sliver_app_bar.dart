import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
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
      // title: titleWidget ?? Text(titleKey ?? ''),
      title: titleWidget ??
          Text(titleKey == null ? '' : context.translate(titleKey!)),
      leading: hasLeading ? leading ?? const GetBackIconButton() : null,
      actions: actions,
    );
  }
}
