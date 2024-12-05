import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/profile/presentation/widgets/profile_img.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
      child: Row(
        children: <Widget>[
          const ProfileImg(radius: 15),
          MySizedBox.width8,
          ValueListenableBuilder(
            valueListenable: userNotifier,
            builder: (context, user, _) => Text(
              user!.user.username,
              style: AppTextStyles.textStyle12Regular.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () => context.pushRoute(const ProfileRoute()),
            icon: Icon(
              AppConstants.personIcon,
              color: context.isDarkModeActive
                  ? AppColors.lightModeColor
                  : AppColors.greyColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: const Size(0, 0),
            ),
            icon: Icon(
              Icons.notifications,
              color: context.isDarkModeActive
                  ? AppColors.lightModeColor
                  : AppColors.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
