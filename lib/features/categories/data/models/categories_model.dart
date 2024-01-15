import 'package:equatable/equatable.dart';
import 'package:store_ify/core/models/image_model.dart';

class CategoryModel extends Equatable {
  final String id;
  final String name;
  final String description;
  final ImageModel image;

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
      image: ImageModel.fromJson(json["image"]),
    );
  }

  @override
  List<Object?> get props => [id, name, description, image];
}
