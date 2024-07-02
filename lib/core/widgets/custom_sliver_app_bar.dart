import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/get_back_icon_button.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const GetBackIconButton(),
      title: Text(
        title,
        style: AppTextStyles.textStyle16Regular,
      ),
    );
  }
}
