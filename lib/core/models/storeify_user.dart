import 'package:json_annotation/json_annotation.dart';

part 'storeify_user.g.dart';

@JsonSerializable()
class StoreifyUser {
  final String token;
  final UserData user;

  const StoreifyUser({
    required this.token,
    required this.user,
  });

  factory StoreifyUser.fromJson(Map<String, dynamic> json) =>
      _$StoreifyUserFromJson(json);
  Map<String, dynamic> toJson() => _$StoreifyUserToJson(this);
}

@JsonSerializable()
class UserData {
  final int id;
  final String username, email;

  const UserData({
    required this.id,
    required this.username,
    required this.email,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
