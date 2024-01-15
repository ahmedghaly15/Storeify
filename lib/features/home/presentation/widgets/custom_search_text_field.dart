import 'package:flutter/material.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/core/helpers/cache_helper.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/service_locator.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        hintText: 'Search',
        prefixIcon: Image.asset(AppAssets.search),
        suffixIcon: IconButton(
          onPressed: () {
            getIt
                .get<CacheHelper>()
                .removeData(key: AppStrings.cachedUserId)
                .then((value) {
              if (value) {
                // getIt.get<FirebaseAuth>().signOut();
                context.navigateAndReplace(newRoute: Routes.loginViewRoute);
              }
            });
          },
          icon: const Icon(
            Icons.tune,
            color: AppColors.primaryColor,
          ),
        ),
        onChanged: (String val) {},
        textAlign: TextAlign.start,
        enabledBorder: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24.r),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
