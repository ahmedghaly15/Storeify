import 'package:dartz/dartz.dart';
import 'package:store_ify/core/api/dio_consumer.dart';
import 'package:store_ify/core/api/end_point.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/stores/data/models/stores_model.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';

class StoresRepoImpl implements StoresRepo {
  final DioConsumer dioConsumer;

  const StoresRepoImpl({required this.dioConsumer});

  @override
  Future<Either<Failure, List<StoresModel>>> getStores() {
    return executeAndHandleErrors<List<StoresModel>>(
      function: () async {
        final response = await dioConsumer.get(EndPoints.store);

        List<StoresModel> stores = [];
        for (var item in response["Store"]) {
          stores.add(StoresModel.fromJson(item));
        }

        return stores;
      },
    );
  }

  @override
  Future<Either<Failure, List<StoresModel>>> getClothesStores() {
    return executeAndHandleErrors<List<StoresModel>>(
      function: () async {
        final response = await dioConsumer.get(EndPoints.clothesStores);

        List<StoresModel> clothesStores = [];
        for (var item in response["Store"]) {
          clothesStores.add(StoresModel.fromJson(item));
        }

        return clothesStores;
      },
    );
  }

  @override
  Future<Either<Failure, List<StoresModel>>> getFoodStores() {
    return executeAndHandleErrors<List<StoresModel>>(
      function: () async {
        final response = await dioConsumer.get(EndPoints.foodStores);

        List<StoresModel> foodStores = [];
        for (var item in response["Store"]) {
          foodStores.add(StoresModel.fromJson(item));
        }

        return foodStores;
      },
    );
  }
}
