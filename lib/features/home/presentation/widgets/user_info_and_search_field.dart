import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/home/presentation/widgets/custom_search_text_field.dart';

class UserInfoAndSearchField extends StatelessWidget {
  const UserInfoAndSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(AppAssets.imagesPerson),
            MySizedBox.width8,
            Text(
              'Helper.currentUser!.userName!',
              style: AppTextStyles.textStyle12Regular.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, color: AppColors.greyColor),
            ),
          ],
        ),
        MySizedBox.height22,
        const CustomSearchTextField(),
      ],
    );
  }
}
