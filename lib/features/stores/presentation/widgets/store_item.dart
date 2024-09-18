import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
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
        color:
            context.isDarkModeActive ? AppColors.itemDarkColor : Colors.white,
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
                  fit: BoxFit.cover,
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
                PreferStoreBlocConsumerIconButton(
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

class PreferStoreBlocConsumerIconButton extends StatelessWidget {
  const PreferStoreBlocConsumerIconButton({
    super.key,
    this.isFavorited = false,
    required this.storeId,
  });

  final bool isFavorited;
  final int storeId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoritesCubit, FavoritesState>(
      listenWhen: (_, current) =>
          current is PreferStoreError || current is RemoveStoreFromFavsError,
      listener: (context, state) => state.whenOrNull(
        preferStoreError: (errorKey) => CustomToast.showToast(
          context: context,
          messageKey: errorKey,
          state: CustomToastState.error,
        ),
        removeStoreFromFavsError: (errorKey) => CustomToast.showToast(
          context: context,
          messageKey: errorKey,
          state: CustomToastState.error,
        ),
      ),
      child: IconButton(
        onPressed: () => context.read<FavoritesCubit>().preferStoreOrNot(
              storeId: storeId,
              isFavorited: isFavorited,
            ),
        icon: Icon(
          isFavorited ? Icons.favorite : Icons.favorite_border_outlined,
          size: 19.w,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
