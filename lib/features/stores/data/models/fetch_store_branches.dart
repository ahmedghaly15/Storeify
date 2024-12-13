import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'fetch_store_branches.g.dart';

@HiveType(typeId: HiveTypeIds.fetchStoreBranchesResponse)
@JsonSerializable()
class FetchStoreBranchesResponse {
  @HiveField(0)
  final List<StoreBranch> branches;

  const FetchStoreBranchesResponse({required this.branches});

  factory FetchStoreBranchesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchStoreBranchesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchStoreBranchesResponseToJson(this);
}

@HiveType(typeId: HiveTypeIds.storeBranch)
@JsonSerializable()
class StoreBranch {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String address;

  const StoreBranch({
    required this.id,
    required this.name,
    required this.address,
  });

  factory StoreBranch.fromJson(Map<String, dynamic> json) =>
      _$StoreBranchFromJson(json);
  Map<String, dynamic> toJson() => _$StoreBranchToJson(this);
}
