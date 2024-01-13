import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/core/widgets/main_button.dart';

class CustomLoginDialog {
  static void show(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, _, __) => const SizedBox(),
      transitionDuration: const Duration(milliseconds: 150),
      transitionBuilder: (context, animation1, animation2, widget) {
        return Material(
          type: MaterialType.transparency,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.5, end: 1.0).animate(animation1),
            child: FadeTransition(
              opacity: Tween<double>(begin: 0.5, end: 1.0).animate(animation1),
              child: const Center(
                child: LoginDialog(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class LoginDialog extends StatelessWidget {
  const LoginDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(vertical: 65.h, horizontal: 65.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.r),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.check_circle,
            color: const Color(0xff0EAA00),
            size: 40.w,
          ),
          SizedBox(height: 19.h),
          Text(
            "Password has been changed successfully",
            textAlign: TextAlign.center,
            style: AppTextStyles.textStyle16Medium,
          ),
          SizedBox(height: 47.h),
          MainButton(
            text: "Login",
            onPressed: () => context.navigateAndRemoveUntil(
              newRoute: Routes.loginViewRoute,
            ),
          ),
        ],
      ),
    );
  }
}
