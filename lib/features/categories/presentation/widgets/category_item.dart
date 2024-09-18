import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/categories/data/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 170.w),
      decoration: BoxDecoration(
        color:
            context.isDarkModeActive ? AppColors.itemDarkColor : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: <BoxShadow>[
          AppConstants.itemBoxShadow,
        ],
      ),
      child: MaterialButton(
        onPressed: () => context.pushRoute(
          SubCategoriesRoute(category: category),
        ),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minWidth: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.vertical(
                  top: Radius.circular(10.r),
                ),
                child: CustomCachedNetworkImage(
                  imageUrl: category.img ??
                      'https://plus.unsplash.com/premium_photo-1675896084254-dcb626387e1e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
                  imageBuilder: (_, img) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            MySizedBox.height5,
            Text(
              category.name,
              style: AppTextStyles.textStyle14Regular.copyWith(
                color: AppColors.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            MySizedBox.height5,
            if (category.description != null || category.products!.isNotEmpty)
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 4.h,
                ),
                child: Text(
                  category.description ??
                      _mergeProductsIntoString(category.products!),
                  style: AppTextStyles.textStyle10Medium,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
          ],
        ),
      ),
    );
  }

  String _mergeProductsIntoString(List<Product> products) {
    if (products.length > 1) {
      return products.map((product) => product.name).toList().join(', ');
    }
    return products[0].name;
  }
}
