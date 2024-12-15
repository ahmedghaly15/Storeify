import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/product_details/presentation/cubit/product_details_cubit.dart';
import 'package:store_ify/features/product_details/presentation/cubit/product_details_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class ProductDescriptionAndActionButtons extends StatelessWidget {
  const ProductDescriptionAndActionButtons({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.description,
          style: AppTextStyles.textStyle16Regular,
        ),
        const Spacer(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 12.h),
          child: Row(
            spacing: 13.w,
            children: [
              Expanded(
                child: BlocConsumer<ProductDetailsCubit, ProductDetailsState>(
                  listenWhen: (_, current) =>
                      _addToCartListenWhen(current.status),
                  listener: (context, state) =>
                      _addToCartListener(state, context),
                  buildWhen: (_, current) =>
                      _addToCartBuildWhen(current.status),
                  builder: (context, state) => MainButton(
                    margin: EdgeInsets.zero,
                    borderRadius: 8,
                    isOutlined: true,
                    onPressed: () => context
                        .read<ProductDetailsCubit>()
                        .addProductToCart(product.id),
                    child: circularIndicatorOrTextWidget(
                      context: context,
                      isLoading: state.status ==
                          ProductDetailsStateStatus.addProductToCartLoading,
                      textKey: LocaleKeys.addToCart,
                      isOutlined: true,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: MainButton(
                  margin: EdgeInsets.zero,
                  borderRadius: 8,
                  textKey: LocaleKeys.buyNow,
                  onPressed: () => context.pushRoute(
                    CheckoutRoute(
                      amount: context
                          .read<ProductDetailsCubit>()
                          .productQuantity
                          .toDouble(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _addToCartListener(ProductDetailsState state, BuildContext context) {
    switch (state.status) {
      case ProductDetailsStateStatus.addProductToCartSuccess:
        context.showToast(LocaleKeys.productAddedToCart);
        break;
      case ProductDetailsStateStatus.addProductToCartError:
        context.showToast(state.error!);
        break;
      default:
        break;
    }
  }

  bool _addToCartListenWhen(ProductDetailsStateStatus status) {
    return status == ProductDetailsStateStatus.addProductToCartError ||
        status == ProductDetailsStateStatus.addProductToCartSuccess;
  }

  bool _addToCartBuildWhen(ProductDetailsStateStatus status) {
    return status == ProductDetailsStateStatus.addProductToCartError ||
        status == ProductDetailsStateStatus.addProductToCartSuccess ||
        status == ProductDetailsStateStatus.addProductToCartLoading;
  }
}
