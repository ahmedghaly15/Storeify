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
import 'package:store_ify/features/cart/presentation/widgets/cart_summary_divider.dart';
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
        fetchCartSuccess: (fetchCartResponse) =>
            fetchCartResponse.cart.isNotEmpty
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
                          context.translate(LangKeys.summary),
                          style: AppTextStyles.textStyle12Regular.copyWith(
                            color: AppColors.colorBEBEC3,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        MySizedBox.height8,
                        const CartSummaryDivider(),
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
                        const CartSummaryDivider(),
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
