import 'package:flutter/material.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/features/categories/data/models/categories_model.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key,
    this.onTap,
    required this.category,
  });

  final void Function()? onTap;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 112.h,
            width: 169.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  category.image.secureUrl,
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              elevation: 2,
              child: Container(
                width: 169.w,
                height: 53.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      category.name,
                      style: AppTextStyles.textStyle14Regular,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      category.description,
                      style: AppTextStyles.textStyle8Regular,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
