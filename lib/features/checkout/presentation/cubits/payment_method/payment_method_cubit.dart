import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/checkout/data/models/payment_method.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_state.dart';

class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  PaymentMethodCubit() : super(const PaymentMethodState.initial());

  PaymentMethod selectedPaymentMethod = AppConstants.paymentMethods[0];
  void updateSelectedPaymentMethod(PaymentMethod paymentMethod) {
    if (selectedPaymentMethod != paymentMethod) {
      selectedPaymentMethod = paymentMethod;
      emit(PaymentMethodState.updateSelectedPaymentMethod(paymentMethod));
    }
  }
}
