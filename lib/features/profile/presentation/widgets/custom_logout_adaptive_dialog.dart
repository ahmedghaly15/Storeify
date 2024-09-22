import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/cancel_outlined_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/profile/presentation/widgets/confirm_logout_bloc_consumer_button.dart';

class CustomLogoutAdaptiveDialog extends StatelessWidget {
  const CustomLogoutAdaptiveDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      icon: Image.asset(
        AppAssets.appIcon,
        width: 48.w,
        height: 48.h,
      ),
      backgroundColor: context.isDarkModeActive
          ? AppColors.darkColor
          : AppColors.lightModeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      content: Text(
        context.translate(LangKeys.sureToLogout),
        style: AppTextStyles.textStyle16Medium,
      ),
      actions: const [
        CancelOutlinedButton(),
        MySizedBox.height10,
        ConfirmLogoutBlocConsumerButton(),
      ],
    );
  }
}
