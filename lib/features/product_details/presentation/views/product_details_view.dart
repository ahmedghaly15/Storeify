import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/product_quantity_controller.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_images.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_price.dart';

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
          ],
        ),
      ),
    );
  }
}
