import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/repositories/forgot_password/forgot_password_repo.dart';

part 'forget_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit({required this.forgotPasswordRepo})
      : super((const ForgotPasswordInitial()));

  final ForgotPasswordRepo forgotPasswordRepo;

  void forgotPassword({required String email}) {
    emit(const ForgotPasswordLoading());

    forgotPasswordRepo.forgotPassword(email: email).then((value) {
      value.fold((failure) {
        emit(ForgotPasswordError(errorMessage: failure.errMessage.toString()));
      }, (message) {
        emit(ForgotPasswordSuccess(message: message.toString()));
      });
    });
  }
}
