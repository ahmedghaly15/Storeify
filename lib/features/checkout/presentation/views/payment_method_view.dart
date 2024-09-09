import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_cubit.dart';
import 'package:store_ify/features/checkout/presentation/widgets/how_do_u_want_to_pay_question.dart';
import 'package:store_ify/features/checkout/presentation/widgets/payment_method_process_progress.dart';
import 'package:store_ify/features/checkout/presentation/widgets/payment_methods.dart';

@RoutePage()
class PaymentMethodView extends StatelessWidget implements AutoRouteWrapper {
  const PaymentMethodView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentMethodCubit>(
      create: (_) => getIt.get<PaymentMethodCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleKey: LangKeys.checkout),
            const SliverToBoxAdapter(
              child: PaymentMethodProcessProgress(),
            ),
            const SliverToBoxAdapter(
              child: HowDoUWantToPayQuestion(),
            ),
            const SliverToBoxAdapter(
              child: PaymentMethods(),
            ),
            SliverToBoxAdapter(
              child: MainButton(
                margin: EdgeInsets.symmetric(
                  horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
                ),
                textKey: LangKeys.next,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
