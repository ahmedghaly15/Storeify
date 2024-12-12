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
    return Container(
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
          SummaryInfo(
            nameKey: LocaleKeys.subtotal,
            price: cart.subTotalPrice,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.h),
            child: SummaryInfo(
              nameKey: LocaleKeys.delivery,
              price: cart.delivery.toDouble(),
            ),
          ),
          const CartSummaryDivider(),
          SummaryInfo(
            nameKey: LocaleKeys.total,
            price: cart.totalPrice,
          ),
        ],
      ),
    );
  }
}
