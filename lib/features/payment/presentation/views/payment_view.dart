import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/widgets/card_details_text.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_form.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_progress_circles.dart';

@RoutePage()
class PaymentView extends StatelessWidget implements AutoRouteWrapper {
  const PaymentView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentCubit>(
      create: (_) => getIt.get<PaymentCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleKey: LangKeys.paymentWithCard),
            const SliverToBoxAdapter(child: PaymentProgressCircles()),
            const SliverToBoxAdapter(child: CardDetailsText()),
            const SliverToBoxAdapter(child: PaymentForm()),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Checkbox.adaptive(
                    value: true,
                    onChanged: (value) {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  Text(
                    context.translate(LangKeys.saveCardDetails),
                    style: AppTextStyles.textStyle14Regular,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: MainButton(
                onPressed: () {},
                textKey: LangKeys.payNow,
                margin: EdgeInsets.symmetric(
                  vertical: 15.h,
                  horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
