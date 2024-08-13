import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Helper {
  static BoxShadow itemBoxShadow() {
    return BoxShadow(
      offset: Offset(0.w, 4.h),
      blurRadius: 4.w,
      spreadRadius: 0,
      color: Colors.black.withOpacity(0.25),
    );
  }
}
