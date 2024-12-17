import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';

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
      title: titleWidget ??
          (titleKey.isNullOrEmpty ? null : Text(context.tr(titleKey!))),
      leading: hasLeading ? leading ?? const GetBackIconButton() : null,
      actions: actions,
    );
  }
}

class GetBackIconButton extends StatelessWidget {
  const GetBackIconButton({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap ?? () => context.maybePop(),
      icon: const Icon(Icons.arrow_back),
    );
  }
}
