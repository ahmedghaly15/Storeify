import 'package:flutter/material.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.r),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 10.h,
              offset: Offset(0, 3.h),
            ),
          ],
        ),
        child: CustomTextField(
          enabled: false,
          hintTextKey: LangKeys.search,
          prefixIcon: Image.asset(AppAssets.iconsSearch),
          enabledBorder: AppConstants.searchFieldOutlineInputBorder,
          focusedBorder: AppConstants.searchFieldOutlineInputBorder,
        ),
      ),
    );
  }
}
