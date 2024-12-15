import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class ProductDescriptionAndActionButtons extends StatelessWidget {
  const ProductDescriptionAndActionButtons({
    super.key,
    required this.productDescription,
  });

  final String productDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productDescription,
          style: AppTextStyles.textStyle16Regular,
        ),
        const Spacer(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 12.h),
          child: Row(
            spacing: 13.w,
            children: [
              Expanded(
                child: MainButton(
                  margin: EdgeInsets.zero,
                  borderRadius: 8,
                  textKey: LocaleKeys.addToCart,
                  isOutlined: true,
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: MainButton(
                  margin: EdgeInsets.zero,
                  borderRadius: 8,
                  textKey: LocaleKeys.buyNow,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
