import 'package:equatable/equatable.dart';
import 'package:store_ify/core/models/image_model.dart';

class StoresModel extends Equatable {
  final String id;
  final String name;
  final ImageModel image;
  final double rate;
  final String type;

  const StoresModel({
    required this.id,
    required this.name,
    required this.image,
    required this.rate,
    required this.type,
  });

  factory StoresModel.fromJson(Map<String, dynamic> json) {
    return StoresModel(
      id: json["_id"],
      name: json["name"],
      image: ImageModel.fromJson(json["image"]),
      rate: (json['rate'] ?? 0).toDouble(),
      type: json['type'],
    );
  }

  @override
  List<Object?> get props => [id, name, image, rate, type];
}
