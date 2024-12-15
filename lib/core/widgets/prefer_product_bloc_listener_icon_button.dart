import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';

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
  late bool _isFavoritedLocal;

  @override
  void initState() {
    super.initState();
    _isFavoritedLocal = widget.isFavorited;
  }

  void _preferProductOrNot() {
    _toggleIsFavoritedLocal();
    context.read<GeneralCubit>().preferProductOrNot(
          productId: widget.productId,
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
        onPressed: () => _preferProductOrNot(),
        icon: Icon(
          _isFavoritedLocal ? Icons.favorite : Icons.favorite_border_outlined,
          size: 18.w,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  void _listener(GeneralState state, BuildContext context) {
    switch (state.status) {
      case GeneralStateStatus.removeProductFromFavsError:
        context.showToast(state.error!);
        // Rollback the change if an error occurs
        _toggleIsFavoritedLocal();
        break;
      case GeneralStateStatus.preferProductError:
        context.showToast(state.error!);
        // Rollback the change if an error occurs
        _toggleIsFavoritedLocal();
        break;
      case GeneralStateStatus.preferProductSuccess:
      case GeneralStateStatus.removeProductFromFavsSuccess:
        context.read<GeneralCubit>().deleteCachedFavProducts();
        break;
      default:
        break;
    }
  }

  bool _listenWhen(GeneralStateStatus status) {
    return status == GeneralStateStatus.removeProductFromFavsError ||
        status == GeneralStateStatus.preferProductError ||
        status == GeneralStateStatus.preferProductSuccess ||
        status == GeneralStateStatus.removeProductFromFavsSuccess;
  }
}
