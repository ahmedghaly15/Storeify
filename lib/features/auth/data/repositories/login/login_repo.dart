import 'package:dartz/dartz.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/features/auth/data/entities/login_params.dart';
import 'package:store_ify/core/models/user.dart';

abstract class LoginRepo {
  Future<Either<Failure, User>> userLogin({
    required LoginParams loginParams,
  });
}
