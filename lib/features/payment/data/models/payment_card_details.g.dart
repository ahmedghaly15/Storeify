// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaymentCardDetailsAdapter extends TypeAdapter<PaymentCardDetails> {
  @override
  final int typeId = 24;

  @override
  PaymentCardDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PaymentCardDetails(
      number: fields[0] as String?,
      cvv: fields[1] as String?,
      amount: fields[2] as String?,
      expMonth: fields[3] as String?,
      expYear: fields[4] as String?,
      cardType: fields[5] as CardType?,
      holderNumber: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, PaymentCardDetails obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.cvv)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.expMonth)
      ..writeByte(4)
      ..write(obj.expYear)
      ..writeByte(5)
      ..write(obj.cardType)
      ..writeByte(6)
      ..write(obj.holderNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentCardDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentCardDetails _$PaymentCardDetailsFromJson(Map<String, dynamic> json) =>
    PaymentCardDetails(
      number: json['number'] as String?,
      cvv: json['cvv'] as String?,
      amount: json['amount'] as String?,
      expMonth: json['exp_month'] as String?,
      expYear: json['exp_year'] as String?,
      cardType: json['cardType'] == null
          ? null
          : CardType.fromJson(json['cardType'] as Map<String, dynamic>),
      holderNumber: (json['holderNumber'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaymentCardDetailsToJson(PaymentCardDetails instance) =>
    <String, dynamic>{
      'number': instance.number,
      'cvv': instance.cvv,
      'amount': instance.amount,
      'exp_month': instance.expMonth,
      'exp_year': instance.expYear,
      'cardType': instance.cardType?.toJson(),
      'holderNumber': instance.holderNumber,
    };
