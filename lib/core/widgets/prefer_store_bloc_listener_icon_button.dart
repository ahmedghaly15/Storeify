import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';

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
  late bool _isFavoritedLocal;

  @override
  void initState() {
    super.initState();
    _isFavoritedLocal = widget.isFavorited;
  }

  void _preferStoreOrNot() {
    _toggleIsFavoritedLocal();
    context.read<GeneralCubit>().preferStoreOrNot(
          storeId: widget.storeId,
          isFavorited: _isFavoritedLocal,
        );
  }

  void _toggleIsFavoritedLocal() {
    setState(() {
      _isFavoritedLocal = !_isFavoritedLocal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GeneralCubit, GeneralState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      child: IconButton(
        onPressed: () => _preferStoreOrNot(),
        icon: Icon(
          _isFavoritedLocal ? Icons.favorite : Icons.favorite_border_outlined,
          size: 19.w,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  void _listener(GeneralState state, BuildContext context) {
    switch (state.status) {
      case GeneralStateStatus.preferStoreError:
        context.showToast(state.error!);
        // Rollback the change if an error occurs
        _toggleIsFavoritedLocal();
        break;
      case GeneralStateStatus.removeStoreFromFavsError:
        context.showToast(state.error!);
        // Rollback the change if an error occurs
        _toggleIsFavoritedLocal();
        break;
      case GeneralStateStatus.preferStoreSuccess:
      case GeneralStateStatus.removeStoreFromFavsSuccess:
        context.read<GeneralCubit>().deleteCachedFavStores();
        break;
      default:
        break;
    }
  }

  bool _listenWhen(GeneralStateStatus status) {
    return status == GeneralStateStatus.preferStoreError ||
        status == GeneralStateStatus.removeStoreFromFavsError ||
        status == GeneralStateStatus.preferStoreSuccess ||
        status == GeneralStateStatus.removeStoreFromFavsSuccess;
  }
}
