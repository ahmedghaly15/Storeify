import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';

class ProductDetailsImages extends StatelessWidget {
  const ProductDetailsImages({super.key, required this.productImages});

  final List<ProductImg> productImages;

  @override
  Widget build(BuildContext context) {
    return productImages.length > 1
        ? Row(
            spacing: 22.w,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCachedNetworkImage(
                imageUrl: productImages[0].img,
                imageBuilder: (_, img) => ClipRRect(
                  borderRadius: BorderRadius.circular(50.r),
                  child: Image(image: img),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(end: 20.w),
                child: Column(
                  spacing: 9.h,
                  children: List.generate(
                    productImages.length - 1,
                    (index) => CustomCachedNetworkImage(
                      imageUrl: productImages[index + 1].img,
                      imageBuilder: (_, img) => CircleAvatar(
                        backgroundImage: img,
                        radius: 25.r,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        : Center(
            child: CustomCachedNetworkImage(
              imageUrl: productImages[0].img,
              imageBuilder: (_, img) => ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image(image: img),
              ),
            ),
          );
  }
}
