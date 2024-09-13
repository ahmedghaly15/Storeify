import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';

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
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      content: Text(
        context.translate(LangKeys.sureToLogout),
        style: AppTextStyles.textStyle16Medium,
      ),
      actions: [
        MainButton(
          onPressed: () {},
          textKey: LangKeys.cancel,
          isOutlined: true,
        ),
        MySizedBox.height10,
        MainButton(
          onPressed: () {},
          textKey: LangKeys.confirm,
        ),
      ],
    );
  }
}
