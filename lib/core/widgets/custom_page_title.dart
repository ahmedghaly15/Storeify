import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

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
              // context.back();
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
