import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';
import 'package:store_ify/features/checkout/presentation/widgets/checkout_view_body.dart';
import 'package:store_ify/features/checkout/presentation/widgets/enable_location_error_widget.dart';
import 'package:store_ify/features/checkout/presentation/widgets/enable_location_loading_widget.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';

@RoutePage()
class CheckoutView extends StatelessWidget implements AutoRouteWrapper {
  const CheckoutView({super.key, required this.amount});

  final double amount;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CheckoutCubit>(
      create: (_) => getIt.get<CheckoutCubit>()..enableLocationPermission(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<CheckoutCubit, CheckoutState>(
          listenWhen: (_, current) =>
              current.status ==
              CheckoutStateStatus.enableLocationPermissionSuccess,
          listener: (context, state) async => await _listener(state, context),
          buildWhen: (_, current) => _buildWhen(current.status),
          builder: (context, state) {
            switch (state.status) {
              case CheckoutStateStatus.enableLocationPermissionLoading:
                return const EnableLocationLoadingWidget();
              case CheckoutStateStatus.enableLocationPermissionError:
                return EnableLocationErrorWidget(error: state.error!);
              case CheckoutStateStatus.enableLocationPermissionSuccess:
                return CheckoutViewBody(amount: amount);
              default:
                return const EnableLocationLoadingWidget();
            }
          },
        ),
      ),
    );
  }

  Future<void> _listener(CheckoutState state, BuildContext context) async {
    switch (state.status) {
      case CheckoutStateStatus.enableLocationPermissionSuccess:
        await context.read<CheckoutCubit>().fetchCityData();
        context.read<CheckoutCubit>().updateCountryCode();
      default:
        break;
    }
  }

  bool _buildWhen(CheckoutStateStatus status) {
    return status == CheckoutStateStatus.enableLocationPermissionLoading ||
        status == CheckoutStateStatus.enableLocationPermissionError ||
        status == CheckoutStateStatus.enableLocationPermissionSuccess;
  }
}
