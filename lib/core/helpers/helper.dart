import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/features/auth/data/models/user.dart';

class Helper {
  static String? uId = '';
  static User? currentUser;

  static BoxShadow itemBoxShadow() {
    return BoxShadow(
      offset: Offset(0.w, 4.h),
      blurRadius: 4.w,
      spreadRadius: 0,
      color: Colors.black.withOpacity(0.25),
    );
  }
}
