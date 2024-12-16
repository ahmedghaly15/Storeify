import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/enums.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/favorites/data/datasources/favorites_local_datasource.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';

class PreferItemBlocListenerIconButton extends StatefulWidget {
  const PreferItemBlocListenerIconButton({
    super.key,
    required this.isFavorited,
    this.productId,
    this.storeId,
    required this.itemType,
  });

  final bool isFavorited;
  final int? productId, storeId;
  final FavItemType itemType;

  @override
  State<PreferItemBlocListenerIconButton> createState() =>
      _PreferItemBlocListenerIconButtonState();
}

class _PreferItemBlocListenerIconButtonState
    extends State<PreferItemBlocListenerIconButton> {
  late bool _isFavoritedLocal;

  @override
  void initState() {
    super.initState();
    _isFavoritedLocal = widget.isFavorited;
  }

  void _toggleIsFavoritedLocal() {
    setState(() {
      _isFavoritedLocal = !_isFavoritedLocal;
    });
  }

  void _preferItemOrNot() {
    _toggleIsFavoritedLocal();
    _isFavoritedLocal
        ? context.read<GeneralCubit>().removeItemFromFavs(
              itemId: widget.itemType == FavItemType.product
                  ? widget.productId!
                  : widget.storeId!,
              itemType: widget.itemType,
            )
        : context.read<GeneralCubit>().preferItem(
              storeId: widget.storeId,
              productId: widget.productId,
              itemType: widget.itemType,
            );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GeneralCubit, GeneralState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      child: IconButton(
        onPressed: () => _preferItemOrNot(),
        icon: Icon(
          _isFavoritedLocal ? Icons.favorite : Icons.favorite_border_outlined,
          size: 18.w,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  void _listener(GeneralState state, BuildContext context) async {
    switch (state.status) {
      case GeneralStateStatus.preferProductError:
      case GeneralStateStatus.removeProductFromFavsError:
      case GeneralStateStatus.preferStoreError:
      case GeneralStateStatus.removeStoreFromFavsError:
        context.showToast(state.error!);
        // Rollback the change if an error occurs
        _toggleIsFavoritedLocal();
        break;
      case GeneralStateStatus.preferProductSuccess:
      case GeneralStateStatus.removeProductFromFavsSuccess:
        await FavoritesLocalDatasource.deleteCachedFavProducts();
        break;
      case GeneralStateStatus.preferStoreSuccess:
      case GeneralStateStatus.removeStoreFromFavsSuccess:
        await FavoritesLocalDatasource.deleteCachedFavStores();
        break;
      default:
        break;
    }
  }

  bool _listenWhen(GeneralStateStatus status) {
    return status == GeneralStateStatus.removeProductFromFavsError ||
        status == GeneralStateStatus.preferProductError ||
        status == GeneralStateStatus.preferProductSuccess ||
        status == GeneralStateStatus.removeProductFromFavsSuccess ||
        status == GeneralStateStatus.preferStoreError ||
        status == GeneralStateStatus.removeStoreFromFavsError ||
        status == GeneralStateStatus.preferStoreSuccess ||
        status == GeneralStateStatus.removeStoreFromFavsSuccess;
  }
}
