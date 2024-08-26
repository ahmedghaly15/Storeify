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
  static const CustomSizedBox width19 = CustomSizedBox(width: 19.0);
  static const CustomSizedBox width8 = CustomSizedBox(width: 8.0);
  static const CustomSizedBox width24 = CustomSizedBox(width: 24.0);
  static const CustomSizedBox height24 = CustomSizedBox(height: 24.0);
  static const CustomSizedBox height32 = CustomSizedBox(height: 32.0);
  static const CustomSizedBox height22 = CustomSizedBox(height: 22.0);
  static const CustomSizedBox height4 = CustomSizedBox(height: 4.0);
  static const CustomSizedBox height5 = CustomSizedBox(height: 5.0);
  static const CustomSizedBox height6 = CustomSizedBox(height: 6.0);
  static const CustomSizedBox height8 = CustomSizedBox(height: 8.0);
  static const CustomSizedBox height19 = CustomSizedBox(height: 19.0);
  static const CustomSizedBox height13 = CustomSizedBox(height: 13.0);
  static const CustomSizedBox height16 = CustomSizedBox(height: 16.0);
  static const CustomSizedBox height40 = CustomSizedBox(height: 40.0);
  static const CustomSizedBox height45 = CustomSizedBox(height: 45.0);
}
