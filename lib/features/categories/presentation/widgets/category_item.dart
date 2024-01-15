import 'package:flutter/material.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/helper.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/features/categories/data/models/categories_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: <BoxShadow>[
          Helper.itemBoxShadow(),
        ],
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () => context.navigateTo(
          routeName: Routes.productsViewRoute,
          arguments: category.id,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: CustomCachedNetworkImage(
                imageUrl: category.image.secureUrl,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 8.h),
                  Text(
                    category.name,
                    style: AppTextStyles.textStyle14Regular.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    category.description,
                    style: AppTextStyles.textStyle10Medium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
