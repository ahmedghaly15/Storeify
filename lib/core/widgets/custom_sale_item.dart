import 'package:flutter/material.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSaleItem extends StatelessWidget {
  const CustomSaleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0.w, 4.h),
            blurRadius: 4.w,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          context.navigateTo(routeName: Routes.productDetailsViewRoute);
        },
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
                child: Image.asset(
                  AppAssets.test,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.only(left: 9.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name of product",
                    style: AppTextStyles.textStyle14Regular.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "Description about Product",
                    style: AppTextStyles.textStyle8Regular.copyWith(
                      color: AppColors.blueColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "250.00 LE",
                        style: AppTextStyles.textStyle10Medium.copyWith(
                          color: AppColors.lightBlueColor,
                        ),
                      ),
                      Text(
                        "450.00 LE",
                        style: AppTextStyles.textStyle10Medium.copyWith(
                          color: const Color(0xff3E3D3B),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          size: 19.w,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
