import 'package:flutter/material.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';

class CustomPageTitle extends StatelessWidget {
  const CustomPageTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              context.getBack();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
        Text(
          title,
          style: AppTextStyles.textStyle16Regular,
        ),
      ],
    );
  }
}
