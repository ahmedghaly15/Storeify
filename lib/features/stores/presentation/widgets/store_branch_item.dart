import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';

class StoreBranchItem extends StatelessWidget {
  const StoreBranchItem({super.key, required this.branch});

  final StoreBranch branch;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.primaryColor,
          width: 1.w,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      padding: EdgeInsets.all(10.h),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: AppColors.primaryColor,
          ),
          MySizedBox.width16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  branch.address,
                  style: AppTextStyles.textStyle12Regular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
