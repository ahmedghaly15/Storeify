import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_state.dart';

class PreferProductBlocListenerIconButton extends StatelessWidget {
  const PreferProductBlocListenerIconButton({
    super.key,
    required this.isFavorited,
    required this.productId,
  });

  final bool isFavorited;
  final int productId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoritesCubit, FavoritesState>(
      listenWhen: (_, current) =>
          current is RemoveProductFromFavsError ||
          current is PreferProductError ||
          current is PreferProductSuccess ||
          current is RemoveProductFromFavsSuccess,
      listener: (context, state) {
        state.whenOrNull(
          removeProductFromFavsError: (errorKey) => CustomToast.showToast(
            context: context,
            messageKey: errorKey,
            state: CustomToastState.error,
          ),
          preferProductError: (errorKey) => CustomToast.showToast(
            context: context,
            messageKey: errorKey,
            state: CustomToastState.error,
          ),
          preferProductSuccess: () {
            context.read<FavoritesCubit>().deleteCachedFavProducts();
          },
          removeProductFromFavsSuccess: () {
            context.read<FavoritesCubit>().deleteCachedFavProducts();
          },
        );
      },
      child: IconButton(
        onPressed: () => context.read<FavoritesCubit>().preferProductOrNot(
              productId: productId,
              isFavorited: isFavorited,
            ),
        icon: Icon(
          isFavorited ? Icons.favorite : Icons.favorite_border_outlined,
          size: 18.w,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
