import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/app_bar_actions.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
      child: Row(
        children: <Widget>[
          Image.asset(AppAssets.imagesPerson),
          MySizedBox.width8,
          Text(
            currentUser!.user.username,
            style: AppTextStyles.textStyle12Regular.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          const Spacer(),
          const AppBarActions(),
        ],
      ),
    );
  }
}
