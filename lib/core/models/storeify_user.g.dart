// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storeify_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreifyUser _$StoreifyUserFromJson(Map<String, dynamic> json) => StoreifyUser(
      token: json['token'] as String,
      user: UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreifyUserToJson(StoreifyUser instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
    };
