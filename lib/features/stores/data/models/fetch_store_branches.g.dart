// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_store_branches.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchStoreBranchesResponseAdapter
    extends TypeAdapter<FetchStoreBranchesResponse> {
  @override
  final int typeId = 18;

  @override
  FetchStoreBranchesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchStoreBranchesResponse(
      branches: (fields[0] as List).cast<StoreBranch>(),
    );
  }

  @override
  void write(BinaryWriter writer, FetchStoreBranchesResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.branches);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchStoreBranchesResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StoreBranchAdapter extends TypeAdapter<StoreBranch> {
  @override
  final int typeId = 21;

  @override
  StoreBranch read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreBranch(
      id: fields[0] as int,
      name: fields[1] as String,
      address: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StoreBranch obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.address);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreBranchAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
