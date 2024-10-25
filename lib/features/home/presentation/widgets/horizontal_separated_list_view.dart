import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';

class HorizontalSeparatedListView extends StatelessWidget {
  const HorizontalSeparatedListView({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.padding,
    this.separatorWidget,
  });

  final Widget? Function(BuildContext, int) itemBuilder;
  final EdgeInsetsGeometry? padding;
  final Widget? separatorWidget;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: padding ??
          EdgeInsetsDirectional.only(end: 16.w, start: 16.w, bottom: 8.h),
      physics: AppConstants.physics,
      scrollDirection: Axis.horizontal,
      itemBuilder: itemBuilder,
      separatorBuilder: ((_, __) => separatorWidget ?? MySizedBox.width19),
      itemCount: itemCount,
    );
  }
}
