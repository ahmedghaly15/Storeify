import 'package:dartz/dartz.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/features/auth/data/entities/sign_up_params.dart';
import 'package:store_ify/core/models/user.dart';

abstract class SignUpRepo {
  Future<Either<Failure, User>> userSingUp({
    required SignUpParams signUpParams,
  });
}
