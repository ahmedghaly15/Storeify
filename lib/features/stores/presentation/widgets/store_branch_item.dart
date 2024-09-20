import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';

class StoreBranchItem extends StatelessWidget {
  const StoreBranchItem({super.key, required this.branch});

  final StoreBranch branch;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppConstants.storeBranchItemDecoration(context),
      padding: AppConstants.storeBranchItemPadding,
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
