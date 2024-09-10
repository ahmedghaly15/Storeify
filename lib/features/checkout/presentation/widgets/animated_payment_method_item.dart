import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/checkout/data/models/payment_method.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_cubit.dart';

class AnimatedPaymentMethodItem extends StatelessWidget {
  const AnimatedPaymentMethodItem({
    super.key,
    required this.isChosen,
    required this.paymentMethod,
  });

  final bool isChosen;
  final PaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 450),
      curve: Curves.easeInOut,
      tween: Tween<double>(
        begin: 0.0,
        end: isChosen ? 10.0.h : 0.0,
      ),
      builder: (_, double shadow, __) => TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        tween: Tween<double>(
          begin: 0.0,
          end: isChosen ? 10.0.h : 0.0,
        ),
        builder: (_, double translateY, __) => Transform.translate(
          offset: Offset(0.0, -translateY),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: EdgeInsets.symmetric(
              vertical: 15.h,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
              border: isChosen
                  ? Border.all(
                      color: AppColors.primaryColor,
                      width: 2.w,
                    )
                  : null,
              boxShadow: [
                isChosen
                    ? BoxShadow(
                        offset: Offset(0, 2.h),
                        blurRadius: shadow,
                        spreadRadius: 1.w,
                        color: const Color(0xff101032).withOpacity(0.25),
                      )
                    : AppConstants.itemBoxShadow,
              ],
            ),
            child: MaterialButton(
              onPressed: () => context
                  .read<PaymentMethodCubit>()
                  .updateSelectedPaymentMethod(paymentMethod),
              padding: EdgeInsets.symmetric(vertical: 18.h),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.translate(paymentMethod.name),
                    style: AppTextStyles.textStyle16Regular,
                  ),
                  MySizedBox.width40,
                  Image.asset(
                    paymentMethod.image,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
