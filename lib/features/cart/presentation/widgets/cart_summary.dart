import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_summary_divider.dart';
import 'package:store_ify/features/cart/presentation/widgets/summary_info.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key, required this.cart});

  final FetchCartResponse cart;

  @override
  Widget build(BuildContext context) {
    return cart.cart.isNotEmpty
        ? Container(
            margin: EdgeInsetsDirectional.only(
              start: 16.w,
              end: 16.w,
              top: 8.h,
              bottom: 24.h,
            ),
            child: Column(
              children: [
                Text(
                  context.tr(LocaleKeys.summary),
                  style: AppTextStyles.textStyle12Regular.copyWith(
                    color: AppColors.colorBEBEC3,
                  ),
                  textAlign: TextAlign.center,
                ),
                MySizedBox.height8,
                const CartSummaryDivider(),
                MySizedBox.height8,
                const SummaryInfo(
                  nameKey: LocaleKeys.subtotal,
                  price: 525.5,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: const SummaryInfo(
                    nameKey: LocaleKeys.delivery,
                    price: 20.0,
                  ),
                ),
                const CartSummaryDivider(),
                const SummaryInfo(
                  nameKey: LocaleKeys.total,
                  price: 553,
                ),
              ],
            ),
          )
        : const SizedBox.shrink();
  }
}
