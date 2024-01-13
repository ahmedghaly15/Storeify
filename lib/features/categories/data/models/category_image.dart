import 'package:equatable/equatable.dart';

class CategoryImage extends Equatable {
  final String secureUrl;
  final String publicId;

  const CategoryImage({required this.secureUrl, required this.publicId});

  factory CategoryImage.fromJson(Map<String, dynamic> json) {
    return CategoryImage(
      secureUrl: json["secure_url"],
      publicId: json["public_id"],
    );
  }

  @override
  List<Object?> get props => [secureUrl, publicId];
}
