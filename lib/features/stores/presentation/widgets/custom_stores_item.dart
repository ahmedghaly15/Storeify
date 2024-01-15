import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/cached_network_image_error_icon.dart';
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
      elevation: 2.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
                child: CachedNetworkImage(
                  imageUrl: store.image.secureUrl,
                  fit: BoxFit.fill,
                  width: double.infinity,
                  errorWidget: (context, _, __) =>
                      const CachedNetworkImageErrorIcon(),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        store.name,
                        style: AppTextStyles.textStyle14Regular.copyWith(
                          color: AppColors.primaryColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
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
                  itemSize: 7.w,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
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
