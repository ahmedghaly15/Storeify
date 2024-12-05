import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_and_theme_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_and_theme_state.dart';

class PreferProductBlocListenerIconButton extends StatefulWidget {
  const PreferProductBlocListenerIconButton({
    super.key,
    required this.isFavorited,
    required this.productId,
  });

  final bool isFavorited;
  final int productId;

  @override
  State<PreferProductBlocListenerIconButton> createState() =>
      _PreferProductBlocListenerIconButtonState();
}

class _PreferProductBlocListenerIconButtonState
    extends State<PreferProductBlocListenerIconButton> {
  late bool isFavoritedLocal;

  @override
  void initState() {
    super.initState();
    isFavoritedLocal = widget.isFavorited;
  }

  void _toggleFavorite() {
    _toggleIsFavoritedLocal();
    context.read<FavoritesAndThemeCubit>().preferProductOrNot(
          productId: widget.productId,
          isFavorited: isFavoritedLocal,
        );
  }

  void _toggleIsFavoritedLocal() {
    setState(() {
      isFavoritedLocal = !isFavoritedLocal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoritesAndThemeCubit, FavoritesAndThemeState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      child: IconButton(
        onPressed: () => _toggleFavorite(),
        icon: Icon(
          isFavoritedLocal ? Icons.favorite : Icons.favorite_border_outlined,
          size: 18.w,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  void _listener(FavoritesAndThemeState state, BuildContext context) {
    switch (state.status) {
      case FavoritesAndThemeStatus.removeProductFromFavsError:
        CustomToast.showToast(
          context: context,
          messageKey: state.error!,
          state: CustomToastState.error,
        );
        // Rollback the change if an error occurs
        _toggleIsFavoritedLocal();
        break;
      case FavoritesAndThemeStatus.preferProductError:
        CustomToast.showToast(
          context: context,
          messageKey: state.error!,
          state: CustomToastState.error,
        );
        // Rollback the change if an error occurs
        _toggleIsFavoritedLocal();
        break;
      case FavoritesAndThemeStatus.preferProductSuccess:
      case FavoritesAndThemeStatus.removeProductFromFavsSuccess:
        context.read<FavoritesAndThemeCubit>().deleteCachedFavProducts();
        break;
      default:
        break;
    }
  }

  bool _listenWhen(FavoritesAndThemeStatus status) {
    return status == FavoritesAndThemeStatus.removeProductFromFavsError ||
        status == FavoritesAndThemeStatus.preferProductError ||
        status == FavoritesAndThemeStatus.preferProductSuccess ||
        status == FavoritesAndThemeStatus.removeProductFromFavsSuccess;
  }
}
