import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive(
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
    );
  }
}
