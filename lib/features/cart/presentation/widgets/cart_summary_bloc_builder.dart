import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_state.dart';
import 'package:store_ify/features/cart/presentation/widgets/summary_info.dart';

class CartSummaryBlocBuilder extends StatelessWidget {
  const CartSummaryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (_, current) =>
          current is FetchCartSuccess || current is FetchCartLoading,
      builder: (context, state) => state.maybeWhen(
        fetchCartLoading: () => const SizedBox.shrink(),
        fetchCartSuccess: (fetchCartResponse) => fetchCartResponse
                .cart.isNotEmpty
            ? Container(
                margin: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.translate(LangKeys.summary),
                      style: AppTextStyles.textStyle12Regular.copyWith(
                        color: AppColors.colorBEBEC3,
                      ),
                    ),
                    MySizedBox.height8,
                    Divider(
                      color: AppColors.colorBEBEC3,
                      thickness: 5.w,
                      height: 1.h,
                    ),
                    MySizedBox.height8,
                    const SummaryInfo(
                      nameKey: LangKeys.subtotal,
                      price: 525.5,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      child: const SummaryInfo(
                        nameKey: LangKeys.delivery,
                        price: 20.0,
                      ),
                    ),
                    Divider(
                      color: AppColors.colorBEBEC3,
                      thickness: 5.w,
                      height: 1.h,
                    ),
                    const SummaryInfo(
                      nameKey: LangKeys.total,
                      price: 553,
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink(),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
