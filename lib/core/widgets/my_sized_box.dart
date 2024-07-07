import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSizedBox extends StatelessWidget {
  final double? height, width;

  const CustomSizedBox({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      width: width?.w,
    );
  }
}

class MySizedBox {
  static const CustomSizedBox width12 = CustomSizedBox(width: 12.0);
  static const CustomSizedBox height24 = CustomSizedBox(height: 24.0);
  static const CustomSizedBox height32 = CustomSizedBox(height: 32.0);
}
