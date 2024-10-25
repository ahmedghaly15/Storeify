import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/profile/data/models/setting_item.dart';

class SettingsSeparatedListView extends StatelessWidget {
  const SettingsSeparatedListView({super.key, required this.settings});

  final List<SettingItem> settings;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 16.w, end: 20.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: settings.length,
        itemBuilder: (context, index) => ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
          ),
          onTap: settings[index].onTap,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
          title: Text(
            context.translate(settings[index].titleKey),
            style: AppTextStyles.textStyle16Regular.copyWith(
              color: AppColors.lightModeColor,
            ),
          ),
          trailing: settings[index].trailing,
        ),
        separatorBuilder: (_, __) => Divider(
          color: AppColors.lightModeColor,
          thickness: 1.w,
          height: 1.h,
        ),
      ),
    );
  }
}
