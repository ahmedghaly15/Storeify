import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class ControlCartProductQuantity extends StatelessWidget {
  const ControlCartProductQuantity({
    super.key,
    required this.icon,
    required this.onTap,
    required this.borderRadius,
  });

  final BorderRadiusGeometry borderRadius;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: AppColors.primaryColor,
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        minWidth: 0,
        height: 0,
        onPressed: onTap,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
