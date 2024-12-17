import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/product_item.dart';
import 'package:store_ify/features/home/presentation/widgets/horizontal_separated_list_view.dart';

class BestSellingListView extends StatelessWidget {
  const BestSellingListView({
    super.key,
    required this.bestSelling,
  });

  final List<Product> bestSelling;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: HorizontalSeparatedListView(
        itemBuilder: (_, index) => AspectRatio(
          aspectRatio: AppConstants.productItemAspectRatio,
          child: ProductItem(
            product: bestSelling[index],
          ),
        ),
        itemCount: bestSelling.length,
      ),
    );
  }
}
