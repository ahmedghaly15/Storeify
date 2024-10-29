import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';

class ProfileViewSliverAppBar extends StatelessWidget {
  const ProfileViewSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBar(
      titleKey: LangKeys.profile,
      actions: [
        const Icon(
          AppConstants.personIcon,
          color: AppColors.primaryColor,
        ),
        IconButton(
          onPressed: () => context.pushRoute(const UpdateProfileRoute()),
          icon: const Icon(Icons.edit_sharp),
        ),
      ],
    );
  }
}
