import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/entities/sign_up_params.dart';
import 'package:store_ify/core/models/user.dart';
import 'package:store_ify/features/auth/data/repositories/sign_up/sign_up_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({required this.signUpRepo}) : super(const SignUpInitial());

  final SignUpRepo signUpRepo;

  void userSignUp({
    required String userName,
    required String email,
    required String password,
    required String confirmPassword,
  }) {
    emit(const SignUpLoading());

    signUpRepo
        .userSingUp(
            signUpParams: SignUpParams(
      userName: userName,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    ))
        .then(
      (value) {
        value.fold(
          (failure) {
            emit(SignUpError(error: failure.errMessage.toString()));
          },
          (user) {
            emit(SignUpSuccess(user: user, uId: user.id!));
          },
        );
      },
    );
  }

  bool isPassword = true;
  bool isConfirmPassVisible = true;

  void switchPassVisibility() {
    isPassword = !isPassword;
    emit(SignUpChangePasswordVisibility(isPassword: isPassword));
  }

  void switchConfirmPassVisibility() {
    isConfirmPassVisible = !isConfirmPassVisible;
    emit(SignUpChangePasswordVisibility(isPassword: isConfirmPassVisible));
  }
}
