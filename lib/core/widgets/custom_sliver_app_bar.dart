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
  });

  final String? titleKey;
  final List<Widget>? actions;
  final Widget? titleWidget;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: titleWidget ?? Text(context.translate(titleKey!)),
      leading: leading ?? const GetBackIconButton(),
      actions: actions,
    );
  }
}
