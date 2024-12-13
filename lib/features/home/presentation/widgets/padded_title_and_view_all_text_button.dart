import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/features/home/presentation/widgets/list_title.dart';
import 'package:store_ify/features/home/presentation/widgets/view_all_text_button.dart';

class PaddedTitleAndViewAllTextButton extends StatelessWidget {
  const PaddedTitleAndViewAllTextButton({
    super.key,
    required this.titleKey,
    required this.viewAllOnPressed,
  });

  final String titleKey;
  final VoidCallback viewAllOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTitle(titleKey: titleKey),
          ViewAllTextButton(onPressed: viewAllOnPressed),
        ],
      ),
    );
  }
}
