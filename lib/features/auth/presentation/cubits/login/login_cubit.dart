import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';
import 'package:store_ify/features/auth/data/repos/login_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void login() async {
    emit(const LoginState.loading());
    final result = await _loginRepo.login(
      const LoginParams(
        email: 'email',
        password: 'password',
      ),
    );
    result.when(
      success: (data) => emit(LoginState.success(data)),
      error: (error) => emit(LoginState.error(error.apiErrorModel.error ?? '')),
    );
  }
}
