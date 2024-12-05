import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';

class CheckboxBlocSelector extends StatelessWidget {
  const CheckboxBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PaymentCubit, PaymentState, bool>(
      selector: (state) => state.checkboxValue,
      builder: (context, checkboxValue) => Checkbox.adaptive(
        value: checkboxValue,
        onChanged: (value) =>
            context.read<PaymentCubit>().toggleCheckBox(value),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
      ),
    );
  }
}
