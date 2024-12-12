import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/router/app_router.dart';

import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_product_item.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_summary.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key, required this.cart});

  final FetchCartResponse cart;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: AppConstants.physics,
      slivers: [
        const CustomSliverAppBar(
          titleKey: LocaleKeys.cart,
          hasLeading: false,
        ),
        SliverList.builder(
          itemCount: cart.cart.length,
          itemBuilder: (_, index) => CartProductItem(
            product: cart.cart[index].product,
          ),
        ),
        SliverToBoxAdapter(
          child: CartSummary(cart: cart),
        ),
        SliverToBoxAdapter(
          child: MainButton(
            onPressed: () => context.pushRoute(const CheckoutRoute()),
            textKey: LocaleKeys.checkout,
            margin: EdgeInsetsDirectional.only(
              start: 24.w,
              end: 24.w,
              bottom: 24.h,
            ),
          ),
        ),
      ],
    );
  }
}
