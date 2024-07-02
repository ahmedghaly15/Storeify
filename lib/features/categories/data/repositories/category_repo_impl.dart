import 'package:dartz/dartz.dart';
import 'package:store_ify/core/api/api_consumer.dart';
import 'package:store_ify/core/api/end_point.dart';
import 'package:store_ify/core/errors/failure.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/categories/data/models/categories_model.dart';
import 'package:store_ify/features/categories/data/repositories/category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  final ApiConsumer apiConsumer;

  const CategoryRepoImpl({required this.apiConsumer});

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories() {
    return executeAndHandleErrors<List<CategoryModel>>(
      function: () async {
        final response = await apiConsumer.get(
          EndPoints.category,
        );

        final List<CategoryModel> categories = [];

        for (var item in response["category"]) {
          categories.add(CategoryModel.fromJson(item));
        }

        return categories;
      },
    );
  }
}
