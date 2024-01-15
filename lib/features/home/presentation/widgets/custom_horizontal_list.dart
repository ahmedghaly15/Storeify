import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';

class CustomHorizontalList extends StatelessWidget {
  const CustomHorizontalList({
    super.key,
    required this.itemBuilder,
  });

  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 16.w, bottom: 8.h),
      physics: AppConstants.physics,
      scrollDirection: Axis.horizontal,
      itemBuilder: itemBuilder,
      separatorBuilder: ((context, index) => SizedBox(width: 19.w)),
      itemCount: 5,
    );
  }
}
