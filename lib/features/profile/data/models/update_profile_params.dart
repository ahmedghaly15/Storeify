import 'dart:io';

class UpdateProfileParams {
  final String? username, email;
  final File? img;

  const UpdateProfileParams({
    required this.username,
    required this.email,
    required this.img,
  });
}
