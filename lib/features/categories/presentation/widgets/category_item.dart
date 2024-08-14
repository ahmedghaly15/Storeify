import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/helper.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/home/data/models/category.dart';

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
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: <BoxShadow>[
          Helper.itemBoxShadow(),
        ],
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.vertical(
                  top: Radius.circular(10.r),
                ),
                child: CustomCachedNetworkImage(
                  imageUrl: category.img,
                  fit: BoxFit.cover,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                category.description,
                style: AppTextStyles.textStyle10Medium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            MySizedBox.height4,
          ],
        ),
      ),
    );
  }
}
