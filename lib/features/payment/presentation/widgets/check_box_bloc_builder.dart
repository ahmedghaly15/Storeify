import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';

class CheckboxBlocBuilder extends StatelessWidget {
  const CheckboxBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      buildWhen: (_, current) => current is ToggleCheckBox,
      builder: (context, state) => Checkbox.adaptive(
        value: context.read<PaymentCubit>().checkboxValue,
        onChanged: (value) =>
            context.read<PaymentCubit>().toggleCheckBox(value),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
      ),
    );
  }
}
