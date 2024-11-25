import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/payment/presentation/widgets/check_box_bloc_builder.dart';

class SaveCardDetailsCheckbox extends StatelessWidget {
  const SaveCardDetailsCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CheckboxBlocBuilder(),
        Text(
          context.tr(LocaleKeys.saveCardDetails),
          style: AppTextStyles.textStyle14Regular,
        ),
      ],
    );
  }
}
