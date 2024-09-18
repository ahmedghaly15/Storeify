import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_state.dart';

class PreferStoreBlocListenerIconButton extends StatelessWidget {
  const PreferStoreBlocListenerIconButton({
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
          current is PreferStoreError ||
          current is RemoveStoreFromFavsError ||
          current is PreferStoreSuccess ||
          current is RemoveStoreFromFavsLoSuccess,
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
        preferStoreSuccess: () =>
            context.read<FavoritesCubit>().deleteCachedFavStores(),
        removeStoreFromFavsSuccess: () =>
            context.read<FavoritesCubit>().deleteCachedFavStores(),
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
