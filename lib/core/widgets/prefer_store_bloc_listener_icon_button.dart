import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_and_theme_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_and_theme_state.dart';

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
    _toggleIsFavoritedLocal();
    context.read<FavoritesAndThemeCubit>().preferStoreOrNot(
          storeId: widget.storeId,
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
          size: 19.w,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  void _listener(FavoritesAndThemeState state, BuildContext context) {
    switch (state.status) {
      case FavoritesAndThemeStatus.preferStoreError:
        context.showToast(state.error!);
        // Rollback the change if an error occurs
        _toggleIsFavoritedLocal();
        break;
      case FavoritesAndThemeStatus.removeStoreFromFavsError:
        context.showToast(state.error!);
        // Rollback the change if an error occurs
        _toggleIsFavoritedLocal();
        break;
      case FavoritesAndThemeStatus.preferStoreSuccess:
      case FavoritesAndThemeStatus.removeStoreFromFavsSuccess:
        context.read<FavoritesAndThemeCubit>().deleteCachedFavStores();
        break;
      default:
        break;
    }
  }

  bool _listenWhen(FavoritesAndThemeStatus status) {
    return status == FavoritesAndThemeStatus.preferStoreError ||
        status == FavoritesAndThemeStatus.removeStoreFromFavsError ||
        status == FavoritesAndThemeStatus.preferStoreSuccess ||
        status == FavoritesAndThemeStatus.removeStoreFromFavsSuccess;
  }
}
