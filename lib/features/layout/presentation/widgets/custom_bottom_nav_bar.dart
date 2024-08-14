import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/layout/data/bottom_nav_item_attributes.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          _bottomNavItems.length,
          (index) => _buildBottomNavItem(_bottomNavItems[index], context),
        ),
      ),
    );
  }

  Widget _buildBottomNavItem(
    BottomNavItemAttributes attributes,
    BuildContext context,
  ) =>
      GestureDetector(
        onTap: () => onTap(attributes.index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              attributes.icon,
              color: attributes.index == currentIndex
                  ? AppColors.primaryColor
                  : AppColors.greyColor,
            ),
            Text(
              context.translate(attributes.labelKey),
              style: AppTextStyles.textStyle8Bold.copyWith(
                color: attributes.index == currentIndex
                    ? AppColors.primaryColor
                    : AppColors.greyColor,
              ),
            ),
          ],
        ),
      );

  List<BottomNavItemAttributes> get _bottomNavItems => const [
        BottomNavItemAttributes(
          index: 0,
          icon: Icons.home_outlined,
          labelKey: LangKeys.home,
          color: AppColors.greyColor,
        ),
        BottomNavItemAttributes(
          index: 1,
          icon: Icons.store,
          labelKey: LangKeys.stores,
          color: AppColors.greyColor,
        ),
        BottomNavItemAttributes(
          index: 2,
          icon: Icons.shopping_cart_outlined,
          labelKey: LangKeys.cart,
          color: AppColors.greyColor,
        ),
        BottomNavItemAttributes(
          index: 3,
          icon: Icons.favorite_outline,
          labelKey: LangKeys.favorite,
          color: AppColors.greyColor,
        ),
      ];
}
