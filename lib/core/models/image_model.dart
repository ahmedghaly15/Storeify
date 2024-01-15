import 'package:equatable/equatable.dart';

class ImageModel extends Equatable {
  final String secureUrl;
  final String publicId;

  const ImageModel({
    required this.secureUrl,
    required this.publicId,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      secureUrl: json["secure_url"],
      publicId: json["public_id"],
    );
  }

  @override
  List<Object?> get props => [secureUrl, publicId];
}
