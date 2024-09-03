import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/checkout/presentation/widgets/checkout_process_progress_dots.dart';

@RoutePage()
class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(titleKey: LangKeys.checkout),
            SliverToBoxAdapter(
              child: CheckoutProcessProgressDots(),
            ),
          ],
        ),
      ),
    );
  }
}
