import 'package:flutter/material.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    this.enabled = true,
    this.onChanged,
    this.controller,
  });

  final bool enabled;
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
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
        enabled: enabled,
        controller: controller,
        hintTextKey: LangKeys.search,
        prefixIcon: Image.asset(AppAssets.iconsSearch),
        enabledBorder: AppConstants.searchFieldOutlineInputBorder,
        focusedBorder: AppConstants.searchFieldOutlineInputBorder,
        disabledBorder: AppConstants.searchFieldOutlineInputBorder,
        textCapitalization: TextCapitalization.none,
        keyboardType: TextInputType.text,
        onChanged: onChanged,
      ),
    );
  }
}
