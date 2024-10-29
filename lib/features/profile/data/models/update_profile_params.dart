import 'dart:io';

class UpdateProfileParams {
  final String? username, email;
  final File? img;

  const UpdateProfileParams({
    this.username,
    this.email,
    this.img,
  });
}
