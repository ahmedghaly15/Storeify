import 'package:dartz/dartz.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/features/stores/data/models/stores_model.dart';

abstract class StoresRepo {
  Future<Either<Failure, List<StoresModel>>> getStores();
  Future<Either<Failure, List<StoresModel>>> getClothesStores();
  Future<Either<Failure, List<StoresModel>>> getFoodStores();
}
