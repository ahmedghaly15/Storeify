import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/profile/presentation/cubits/update_profile/update_profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/update_profile/update_profile_state.dart';
import 'package:store_ify/features/profile/presentation/widgets/profile_img.dart';

class UpdateProfileImgAndData extends StatelessWidget {
  const UpdateProfileImgAndData({super.key});

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
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              BlocSelector<UpdateProfileCubit, UpdateProfileState, File?>(
                selector: (state) => state.selectedImg,
                builder: (context, selectedImg) => selectedImg == null
                    ? const ProfileImg()
                    : CircleAvatar(
                        radius: 30.r,
                        backgroundImage:
                            FileImage(selectedImg) as ImageProvider,
                        backgroundColor: AppColors.primaryColor,
                      ),
              ),
              IconButton(
                style: IconButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () =>
                    context.read<UpdateProfileCubit>().pickProfileImg(),
                icon: const Icon(
                  Icons.edit_square,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          MySizedBox.width8,
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocSelector<UpdateProfileCubit, UpdateProfileState, String>(
                  selector: (state) => state.username,
                  builder: (context, username) => Text(
                    username.isEmpty ? currentUser!.user.username : username,
                    style: AppTextStyles.textStyle16Regular.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                BlocSelector<UpdateProfileCubit, UpdateProfileState, String>(
                  selector: (state) => state.email,
                  builder: (context, email) => Text(
                    email.isEmpty ? currentUser!.user.email : email,
                    style: AppTextStyles.textStyle12Regular,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
