import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';

enum CustomToastState { success, warning, error, info }

class CustomToast {
  static void showToast({
    required BuildContext context,
    required String message,
    required CustomToastState state,
  }) {
    showToastWidget(
      _buildToastWidget(message, state),
      context: context,
      animation: StyledToastAnimation.slideFromBottomFade,
      reverseAnimation: StyledToastAnimation.fade,
      position: StyledToastPosition.bottom,
      animDuration: const Duration(seconds: 1),
      duration: const Duration(seconds: 4),
      curve: Curves.elasticOut,
      reverseCurve: Curves.fastOutSlowIn,
    );
  }

  static Widget _buildToastWidget(String message, CustomToastState state) {
    Color backgroundColor;
    IconData icon;

    switch (state) {
      case CustomToastState.success:
        backgroundColor = Colors.green;
        icon = Icons.check_circle;
        break;
      case CustomToastState.warning:
        backgroundColor = Colors.orange;
        icon = Icons.warning;
        break;
      case CustomToastState.error:
        backgroundColor = Colors.red;
        icon = Icons.error;
        break;
      case CustomToastState.info:
      default:
        backgroundColor = Colors.blue;
        icon = Icons.info;
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.0.h),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0.r),
        color: backgroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white),
          MySizedBox.width12,
          Expanded(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
