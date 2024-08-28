import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/helper.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_state.dart';
import 'package:store_ify/features/stores/data/models/store.dart';

class StoreItem extends StatelessWidget {
  const StoreItem({
    super.key,
    required this.store,
  });

  final Store store;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: <BoxShadow>[
          Helper.itemBoxShadow(),
        ],
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () => context.pushRoute(StoreDetailsRoute(store: store)),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
                child: CustomCachedNetworkImage(
                  imageUrl: store.img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MySizedBox.height6,
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
                    BlocListener<FavoritesCubit, FavoritesState>(
                      listenWhen: (_, current) =>
                          current is PreferStoreError ||
                          current is RemoveStoreFromFavsError,
                      listener: (context, state) => state.whenOrNull(
                        preferStoreError: (errorKey) => CustomToast.showToast(
                          context: context,
                          messageKey: errorKey,
                          state: CustomToastState.error,
                        ),
                        removeStoreFromFavsError: (errorKey) =>
                            CustomToast.showToast(
                          context: context,
                          messageKey: errorKey,
                          state: CustomToastState.error,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // TODO: handle add / remove store from favorites logic
                        },
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          size: 19.w,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                // RatingBar.builder(
                //   initialRating: store.rate,
                //   minRating: 0,
                //   direction: Axis.horizontal,
                //   allowHalfRating: true,
                //   itemCount: 5,
                //   itemSize: 12.w,
                //   itemPadding: EdgeInsets.only(right: 3.w),
                //   itemBuilder: (context, _) => const Icon(
                //     Icons.star,
                //     color: Color(0xffFFE600),
                //   ),
                //   onRatingUpdate: (rating) {
                //     rating = store.rate;
                //   },
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
