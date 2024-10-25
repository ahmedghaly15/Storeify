import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';

class PaymentTextFieldLabel extends StatelessWidget {
  const PaymentTextFieldLabel({
    super.key,
    required this.labelKey,
  });

  final String labelKey;

  @override
  Widget build(BuildContext context) {
    return TextFieldLabel(
      labelKey: labelKey,
      margin: EdgeInsetsDirectional.only(bottom: 11.h),
      textStyle: AppTextStyles.textStyle14Regular,
    );
  }
}
