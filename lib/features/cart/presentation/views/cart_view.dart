import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_products_sliver_list_bloc_builder.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_summary_bloc_builder.dart';
import 'package:store_ify/features/cart/presentation/widgets/checkout_button_bloc_builder.dart';

@RoutePage()
class CartView extends StatelessWidget implements AutoRouteWrapper {
  const CartView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CartCubit>(
      create: (_) => getIt.get<CartCubit>()..fetchCart(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: AppConstants.physics,
          slivers: [
            CustomSliverAppBar(titleKey: LangKeys.cart, hasLeading: false),
            CartProductsSliverListBlocBuilder(),
            SliverToBoxAdapter(
              child: CartSummaryBlocBuilder(),
            ),
            SliverToBoxAdapter(
              child: CheckoutButtonBlocBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
