import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';

class CurrentUserData extends StatelessWidget {
  const CurrentUserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        top: 40.h,
        bottom: 57.h,
        end: 26.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCachedNetworkImage(
            imageUrl:
                'https://img.freepik.com/free-photo/confident-handsome-guy-posing-against-white-wall_176420-32936.jpg?t=st=1726145242~exp=1726148842~hmac=d88f0854b224a4b284dd8236414a4e0854ca07915b501ad2375b8032fed3456e&w=1060',
            imageBuilder: (_, image) => CircleAvatar(
              radius: 30.r,
              backgroundImage: image,
              backgroundColor: AppColors.primaryColor,
            ),
          ),
          MySizedBox.width8,
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentUser?.user.username ?? 'Ahmed Ghaly',
                  style: AppTextStyles.textStyle16Regular.copyWith(
                    color: AppColors.primaryColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  currentUser?.user.email ?? 'aVH0B@example.com',
                  style: AppTextStyles.textStyle12Regular,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
