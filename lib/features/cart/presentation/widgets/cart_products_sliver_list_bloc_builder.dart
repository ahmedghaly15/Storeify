import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_state.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_product_item.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_sliver_shimmer_loading.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class CartProductsSliverListBlocBuilder extends StatelessWidget {
  const CartProductsSliverListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (_, current) =>
          current is FetchCartLoading ||
          current is FetchCartSuccess ||
          current is FetchCartError,
      builder: (context, state) => state.maybeWhen(
        fetchCartLoading: () => const CartSliverShimmerLoading(),
        fetchCartSuccess: (fetchCartResponse) =>
            _buildFetchCartSuccessWidget(fetchCartResponse),
        fetchCartError: (errorKey) => SliverFillRemaining(
          child: CustomErrorWidget(
            tryAgainOnPressed: () => context.read<CartCubit>().fetchCart(),
            errorKey: errorKey,
          ),
        ),
        orElse: () => SliverFillRemaining(
          child: CustomErrorWidget(
            tryAgainOnPressed: () => context.read<CartCubit>().fetchCart(),
            errorKey: LocaleKeys.defaultError,
          ),
        ),
      ),
    );
  }

  Widget _buildFetchCartSuccessWidget(FetchCartResponse fetchCartResponse) {
    return fetchCartResponse.cart.isNotEmpty
        ? SliverList.builder(
            itemCount: fetchCartResponse.cart.length,
            itemBuilder: (_, index) => CartProductItem(
              product: fetchCartResponse.cart[index].product,
            ),
          )
        : const SliverFillRemaining(
            child: Center(
              child: Text('Empty Cart'),
            ),
          );
  }
}
