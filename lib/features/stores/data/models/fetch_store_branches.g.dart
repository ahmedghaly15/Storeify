// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_store_branches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchStoreBranchesResponse _$FetchStoreBranchesResponseFromJson(
        Map<String, dynamic> json) =>
    FetchStoreBranchesResponse(
      branches: (json['branches'] as List<dynamic>)
          .map((e) => StoreBranch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchStoreBranchesResponseToJson(
        FetchStoreBranchesResponse instance) =>
    <String, dynamic>{
      'branches': instance.branches,
    };

StoreBranch _$StoreBranchFromJson(Map<String, dynamic> json) => StoreBranch(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$StoreBranchToJson(StoreBranch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };
