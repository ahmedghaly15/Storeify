import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'storeify_user.freezed.dart';
part 'storeify_user.g.dart';

@HiveType(typeId: HiveTypeIds.storeifyUser)
@freezed
class StoreifyUser with _$StoreifyUser {
  @JsonSerializable(explicitToJson: true)
  const factory StoreifyUser({
    @HiveField(0) String? token,
    @HiveField(1) required UserData user,
  }) = _StoreifyUser;

  factory StoreifyUser.fromJson(Map<String, dynamic> json) =>
      _$StoreifyUserFromJson(json);
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
  @HiveField(3)
  final String? img;

  const UserData({
    required this.id,
    required this.username,
    required this.email,
    this.img,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
