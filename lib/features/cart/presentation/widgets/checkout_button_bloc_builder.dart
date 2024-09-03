import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_state.dart';

class CheckoutButtonBlocBuilder extends StatelessWidget {
  const CheckoutButtonBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (_, current) =>
          current is FetchCartSuccess || current is FetchCartLoading,
      builder: (context, state) => state.maybeWhen(
        fetchCartLoading: () => const SizedBox.shrink(),
        fetchCartSuccess: (fetchCartResponse) =>
            fetchCartResponse.cart.isNotEmpty
                ? MainButton(
                    onPressed: () {},
                    textKey: LangKeys.checkout,
                    margin: EdgeInsetsDirectional.only(
                      start: 24.w,
                      end: 24.w,
                      bottom: 24.h,
                    ),
                  )
                : const SizedBox.shrink(),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
