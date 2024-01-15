import 'package:flutter/material.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/features/stores/data/models/stores_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomStoresItem extends StatelessWidget {
  const CustomStoresItem({
    super.key,
    required this.store,
  });

  final StoresModel store;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Expanded(
              child: CustomCachedNetworkImage(imageUrl: store.image.secureUrl),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 6.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      store.name,
                      style: AppTextStyles.textStyle14Regular.copyWith(
                        color: AppColors.primaryColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        size: 19.w,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                RatingBar.builder(
                  initialRating: store.rate,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 12.w,
                  itemPadding: EdgeInsets.only(right: 3.w),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color(0xffFFE600),
                  ),
                  onRatingUpdate: (rating) {
                    rating = store.rate;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
