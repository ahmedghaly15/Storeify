import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/main_button.dart';

class CancelOutlinedButton extends StatelessWidget {
  const CancelOutlinedButton({super.key, this.onCancel});

  final VoidCallback? onCancel;

  @override
  Widget build(BuildContext context) {
    return MainButton(
      onPressed: onCancel ?? () => context.maybePop(),
      textKey: LangKeys.cancel,
      isOutlined: true,
    );
  }
}
