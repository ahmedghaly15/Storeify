import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/payment/data/models/card_type.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_custom_text_field.dart';

class CardTypeTextFieldBlocBuilder extends StatelessWidget {
  const CardTypeTextFieldBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      buildWhen: (_, current) => current is UpdateSelectedCardType,
      builder: (context, state) => PaymentCustomTextField(
        hintTextKey: context.read<PaymentCubit>().selectedCardType.nameKey,
        controller: context.read<PaymentCubit>().cardTypeController,
        prefixIcon: Image.asset(
          context.read<PaymentCubit>().selectedCardType.image,
          width: 32.w,
          height: 9.h,
        ),
        suffixIcon: PopupMenuButton<CardType>(
          position: PopupMenuPosition.under,
          initialValue: context.read<PaymentCubit>().selectedCardType,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: AppColors.primaryColor,
          ),
          itemBuilder: (_) => AppConstants.cardTypes
              .map(
                (cardType) => PopupMenuItem(
                  value: cardType,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(cardType.image),
                      Text(
                        context.tr(cardType.nameKey),
                        style: AppTextStyles.textStyle10Medium,
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
          onSelected: (value) {
            context.read<PaymentCubit>().updateSelectedCardType(value);
          },
        ),
      ),
    );
  }
}
