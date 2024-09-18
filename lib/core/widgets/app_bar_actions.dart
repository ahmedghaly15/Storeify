import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_constants.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => context.pushRoute(const ProfileRoute()),
          icon: Icon(
            AppConstants.personIcon,
            color:
                context.isDarkModeActive ? Colors.white : AppColors.greyColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: const Size(0, 0),
          ),
          icon: Icon(
            Icons.notifications,
            color:
                context.isDarkModeActive ? Colors.white : AppColors.greyColor,
          ),
        ),
      ],
    );
  }
}
