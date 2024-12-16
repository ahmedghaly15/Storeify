import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/models/product_color.dart';
import 'package:store_ify/core/utils/functions/get_color_from_string.dart';
import 'package:store_ify/features/product_details/presentation/cubit/product_details_cubit.dart';
import 'package:store_ify/features/product_details/presentation/cubit/product_details_state.dart';

class ProductDetailsColors extends StatelessWidget {
  const ProductDetailsColors({
    super.key,
    required this.productColors,
  });

  final List<ProductColor> productColors;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: List.generate(
        productColors.length,
        (index) => BlocSelector<ProductDetailsCubit, ProductDetailsState,
            ProductColor>(
          selector: (state) => state.selectedProductColor!,
          builder: (context, selectedProductColor) {
            final isSelected = selectedProductColor == productColors[index];
            return GestureDetector(
              onTap: () => context
                  .read<ProductDetailsCubit>()
                  .selectProductColor(productColors[index]),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: 16.h,
                width: 16.h,
                padding: isSelected ? EdgeInsets.all(2.5.h) : EdgeInsets.zero,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected
                      ? Colors.white
                      : getColorFromString(productColors[index].color),
                  boxShadow: [
                    if (isSelected)
                      BoxShadow(
                        offset: Offset(0.5.h, 0.5.w),
                        blurRadius: 2.r,
                        spreadRadius: 0,
                        color: const Color(0xffE3730F).withValues(alpha: 0.5),
                      ),
                  ],
                ),
                child: isSelected
                    ? CircleAvatar(
                        backgroundColor:
                            getColorFromString(selectedProductColor.color),
                        // radius: 8.r,
                      )
                    : null,
              ),
            );
          },
        ),
      ),
    );
  }
}
