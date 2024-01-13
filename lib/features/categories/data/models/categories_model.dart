import 'package:equatable/equatable.dart';
import 'package:store_ify/features/stores/data/models/stores_model.dart';

class CategoryModel extends Equatable {
  final String id;
  final String name;
  final String description;
  final CategoryImage image;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json["_id"],
      name: json["name"],
      description: json["description"],
      image: CategoryImage.fromJson(json["image"]),
    );
  }

  String get categoryId => id;

  @override
  List<Object?> get props => [id, name, description, image];
}
