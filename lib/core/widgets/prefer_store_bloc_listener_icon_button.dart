import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_state.dart';

class PreferStoreBlocListenerIconButton extends StatefulWidget {
  const PreferStoreBlocListenerIconButton({
    super.key,
    this.isFavorited = false,
    required this.storeId,
  });

  final bool isFavorited;
  final int storeId;

  @override
  State<PreferStoreBlocListenerIconButton> createState() =>
      _PreferStoreBlocListenerIconButtonState();
}

class _PreferStoreBlocListenerIconButtonState
    extends State<PreferStoreBlocListenerIconButton> {
  late bool isFavoritedLocal;

  @override
  void initState() {
    super.initState();
    isFavoritedLocal = widget.isFavorited;
  }

  void _toggleFavorite() {
    setState(() {
      isFavoritedLocal = !isFavoritedLocal;
    });
    context.read<FavoritesCubit>().preferStoreOrNot(
          storeId: widget.storeId,
          isFavorited: isFavoritedLocal,
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoritesCubit, FavoritesState>(
      listenWhen: (_, current) =>
          current is PreferStoreError ||
          current is RemoveStoreFromFavsError ||
          current is PreferStoreSuccess ||
          current is RemoveStoreFromFavsSuccess,
      listener: (context, state) {
        state.whenOrNull(
          preferStoreError: (errorKey) {
            CustomToast.showToast(
              context: context,
              messageKey: errorKey,
              state: CustomToastState.error,
            );
            // Rollback the change if an error occurs
            setState(() {
              isFavoritedLocal = !isFavoritedLocal;
            });
          },
          removeStoreFromFavsError: (errorKey) {
            CustomToast.showToast(
              context: context,
              messageKey: errorKey,
              state: CustomToastState.error,
            );
            // Rollback the change if an error occurs
            setState(() {
              isFavoritedLocal = !isFavoritedLocal;
            });
          },
          preferStoreSuccess: () =>
              context.read<FavoritesCubit>().deleteCachedFavStores(),
          removeStoreFromFavsSuccess: () =>
              context.read<FavoritesCubit>().deleteCachedFavStores(),
        );
      },
      child: IconButton(
        onPressed: _toggleFavorite,
        icon: Icon(
          isFavoritedLocal ? Icons.favorite : Icons.favorite_border_outlined,
          size: 19.w,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
