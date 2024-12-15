import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/core/widgets/product_quantity_controller.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_images.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_price.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_section_title.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_sizes_and_prefer_icon_button.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

@RoutePage()
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            const SliverToBoxAdapter(
              child: ProductQuantityController(
                mainAxisAlignment: MainAxisAlignment.center,
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
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    spacing: 8.w,
                    children: List.generate(
                      product.colors!.length,
                      (index) => Text(
                        product.colors![index].color,
                        style: AppTextStyles.textStyle16Regular,
                      ),
                    ),
                  ),
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
                child: Column(
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
                            child: MainButton(
                              margin: EdgeInsets.zero,
                              borderRadius: 8,
                              textKey: LocaleKeys.addToCart,
                              isOutlined: true,
                              onPressed: () {
                                debugPrint(
                                    product.sizes!.isNotEmpty.toString());
                              },
                            ),
                          ),
                          Expanded(
                            child: MainButton(
                              margin: EdgeInsets.zero,
                              borderRadius: 8,
                              textKey: LocaleKeys.buyNow,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
