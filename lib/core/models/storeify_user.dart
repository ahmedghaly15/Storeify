import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'storeify_user.g.dart';

@HiveType(typeId: HiveTypeIds.storeifyUser)
@JsonSerializable()
class StoreifyUser {
  @HiveField(0)
  final String token;
  @HiveField(1)
  final UserData user;

  const StoreifyUser({
    required this.token,
    required this.user,
  });

  factory StoreifyUser.fromJson(Map<String, dynamic> json) =>
      _$StoreifyUserFromJson(json);
  Map<String, dynamic> toJson() => _$StoreifyUserToJson(this);
}

@HiveType(typeId: HiveTypeIds.storeifyUserData)
@JsonSerializable()
class UserData {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String username;
  @HiveField(2)
  final String email;

  const UserData({
    required this.id,
    required this.username,
    required this.email,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
