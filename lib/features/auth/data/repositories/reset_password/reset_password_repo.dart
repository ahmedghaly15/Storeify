import 'package:dartz/dartz.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/features/auth/data/entities/reset_password_params.dart';

abstract class ResetPasswordRepo {
  Future<Either<Failure, dynamic>> resetPassword({
    required ResetPasswordParams resetPasswordParams,
  });
}
