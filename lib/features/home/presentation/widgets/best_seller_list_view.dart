import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/custom_product_item.dart';
import 'package:store_ify/features/home/presentation/widgets/custom_horizontal_list.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: CustomHorizontalList(
        itemBuilder: (context, index) {
          return const CustomProductItem();
        },
      ),
    );
  }
}
