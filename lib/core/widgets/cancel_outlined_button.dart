import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class CancelOutlinedButton extends StatelessWidget {
  const CancelOutlinedButton({super.key, this.onCancel});

  final VoidCallback? onCancel;

  @override
  Widget build(BuildContext context) {
    return MainButton(
      onPressed: onCancel ?? () => context.maybePop(),
      textKey: LocaleKeys.cancel,
      isOutlined: true,
    );
  }
}
