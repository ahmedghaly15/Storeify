import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/product_quantity_controller.dart';
import 'package:store_ify/features/product_details/presentation/cubit/product_details_cubit.dart';
import 'package:store_ify/features/product_details/presentation/cubit/product_details_state.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_description_and_action_buttons.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_colors.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_images.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_price.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_section_title.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_sizes_and_prefer_icon_button.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          SliverToBoxAdapter(
            child: ProductDetailsImages(productImages: product.productImages),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 16.h),
              alignment: Alignment.center,
              child: Text(
                product.name,
                style: AppTextStyles.textStyle16Medium.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8.h),
              child: ProductDetailsPrice(
                price: product.price,
                priceAfterDiscount: product.priceAfterDiscount,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ProductQuantityController(
              mainAxisAlignment: MainAxisAlignment.center,
              decreaseOnPressed: () =>
                  context.read<ProductDetailsCubit>().decreaseProductQuantity(),
              increaseOnPressed: () =>
                  context.read<ProductDetailsCubit>().increaseProductQuantity(),
              productQuantityWidget:
                  BlocSelector<ProductDetailsCubit, ProductDetailsState, int>(
                selector: (state) => state.productQuantity,
                builder: (context, productQuantity) => Text(
                  '$productQuantity',
                  style: AppTextStyles.textStyle8Regular.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          ),
          if (product.sizes != null && product.sizes!.isNotEmpty)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              sliver: const SliverToBoxAdapter(
                child: ProductDetailsSectionTitle(
                  titleKey: LocaleKeys.sizes,
                ),
              ),
            ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            sliver: SliverToBoxAdapter(
              child: ProductDetailsSizesAndPreferIconButton(product: product),
            ),
          ),
          if (product.colors != null && product.colors!.isNotEmpty)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              sliver: const SliverToBoxAdapter(
                child: ProductDetailsSectionTitle(
                  titleKey: LocaleKeys.colors,
                ),
              ),
            ),
          if (product.colors != null && product.colors!.isNotEmpty)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 8.h),
              sliver: SliverToBoxAdapter(
                child: ProductDetailsColors(productColors: product.colors!),
              ),
            ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            sliver: const SliverToBoxAdapter(
              child: ProductDetailsSectionTitle(
                titleKey: LocaleKeys.details,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: ProductDescriptionAndActionButtons(
                product: product,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
