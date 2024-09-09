import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/checkout/presentation/widgets/how_do_u_want_to_pay_question.dart';
import 'package:store_ify/features/checkout/presentation/widgets/payment_method_process_progress.dart';

@RoutePage()
class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(titleKey: LangKeys.checkout),
            SliverToBoxAdapter(
              child: PaymentMethodProcessProgress(),
            ),
            SliverToBoxAdapter(
              child: HowDoUWantToPayQuestion(),
            ),
          ],
        ),
      ),
    );
  }
}
