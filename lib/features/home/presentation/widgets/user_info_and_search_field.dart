import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/helpers/helper.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/features/home/presentation/widgets/custom_search_text_field.dart';

class UserInfoAndSearchField extends StatelessWidget {
  const UserInfoAndSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(AppAssets.imagesPerson),
            SizedBox(width: 8.w),
            Text(
              Helper.currentUser!.userName!,
              style: AppTextStyles.textStyle12Regular.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 22.h),
        const CustomSearchTextField(),
      ],
    );
  }
}
