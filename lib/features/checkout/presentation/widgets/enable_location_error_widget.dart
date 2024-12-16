import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class EnableLocationErrorWidget extends StatelessWidget {
  const EnableLocationErrorWidget({
    super.key,
    required this.error,
  });

  final String error;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(titleKey: LocaleKeys.checkout),
        SliverFillRemaining(
          hasScrollBody: false,
          child: CustomErrorWidget(
            errorKey: error,
            errorDescriptionKey: error == LocaleKeys.locationDenied
                ? LocaleKeys.locationDeniedDescription
                : null,
            tryAgainOnPressed: () =>
                context.read<CheckoutCubit>().enableLocationPermission(),
          ),
        ),
      ],
    );
  }
}
