import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_state.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_loading_view.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_view_body.dart';
import 'package:store_ify/features/cart/presentation/widgets/empty_cart_widget.dart';

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
    return SafeArea(
      child: RefreshIndicator.adaptive(
        onRefresh: () async => await context.read<CartCubit>().fetchCart(),
        child: BlocBuilder<CartCubit, CartState>(
          buildWhen: (_, current) => _buildWhen(current.status),
          builder: (context, state) {
            switch (state.status) {
              case CartStateStatus.fetchCartLoading:
                return const CartLoadingView();
              case CartStateStatus.fetchCartSuccess:
                return state.cart!.cart.isNotEmpty
                    ? CartViewBody(
                        cart: state.cart!,
                        amount: state.cart!.totalPrice,
                      )
                    : const EmptyCartWidget();
              case CartStateStatus.fetchCartError:
                return state.cart != null
                    ? (state.cart!.cart.isNotEmpty
                        ? CartViewBody(
                            cart: state.cart!,
                            amount: state.cart!.totalPrice,
                          )
                        : const EmptyCartWidget())
                    : CustomScrollView(
                        slivers: [
                          SliverFillRemaining(
                            hasScrollBody: false,
                            child: CustomErrorWidget(
                              errorKey: state.error!,
                              tryAgainOnPressed: () =>
                                  context.read<CartCubit>().fetchCart(),
                            ),
                          ),
                        ],
                      );
              default:
                return const CartLoadingView();
            }
          },
        ),
      ),
    );
  }

  bool _buildWhen(CartStateStatus status) {
    return status == CartStateStatus.fetchCartLoading ||
        status == CartStateStatus.fetchCartSuccess ||
        status == CartStateStatus.fetchCartError;
  }
}
