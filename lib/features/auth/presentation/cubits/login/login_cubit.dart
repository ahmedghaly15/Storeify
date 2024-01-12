import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:store_ify/features/auth/data/entities/login_params.dart';
import 'package:store_ify/features/auth/data/models/user.dart';
import 'package:store_ify/features/auth/data/repositories/login/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepo}) : super(const LoginInitial());

  final LoginRepo loginRepo;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(const LoginLoading());

    loginRepo
        .userLogin(loginParams: LoginParams(email: email, password: password))
        .then(
      (value) {
        value.fold(
          (failure) {
            emit(LoginError(error: failure.errMessage.toString()));
          },
          (user) {
            emit(LoginSuccess(user: user, uId: user.id!));
          },
        );
      },
    );
  }

  bool isPassword = true;
  void changePasswordVisibility() {
    isPassword = !isPassword;

    emit(LoginChangePasswordVisibility(isPassword: isPassword));
  }
}
