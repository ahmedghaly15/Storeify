import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(const PaymentState.initial());
}
