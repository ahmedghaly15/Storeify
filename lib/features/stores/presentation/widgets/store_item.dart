import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/prefer_store_bloc_listener_icon_button.dart';
import 'package:store_ify/features/stores/data/models/store.dart';

class StoreItem extends StatelessWidget {
  const StoreItem({super.key, required this.store});

  final Store store;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 175.w),
      decoration: BoxDecoration(
        color: context.isDarkModeActive
            ? AppColors.secondaryDarkColor
            : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: <BoxShadow>[
          AppConstants.itemBoxShadow,
        ],
      ),
      child: MaterialButton(
        onPressed: () => context.pushRoute(StoreDetailsRoute(store: store)),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minWidth: 0,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
                child: CustomCachedNetworkImage(
                  imageUrl: store.img,
                  imageBuilder: (_, img) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
                PreferStoreBlocListenerIconButton(
                  storeId: store.id,
                  // TODO:
                  // isFavorited: store.isFavorited,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
