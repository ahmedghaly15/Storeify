import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_store_branches.g.dart';

@JsonSerializable()
class FetchStoreBranchesResponse {
  final List<StoreBranch> branches;

  const FetchStoreBranchesResponse({required this.branches});

  factory FetchStoreBranchesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchStoreBranchesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchStoreBranchesResponseToJson(this);
}

@JsonSerializable()
class StoreBranch {
  final int id;
  final String name, address;

  const StoreBranch({
    required this.id,
    required this.name,
    required this.address,
  });

  factory StoreBranch.fromJson(Map<String, dynamic> json) =>
      _$StoreBranchFromJson(json);
  Map<String, dynamic> toJson() => _$StoreBranchToJson(this);
}
