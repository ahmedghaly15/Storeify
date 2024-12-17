// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckoutResponse _$CheckoutResponseFromJson(Map<String, dynamic> json) =>
    CheckoutResponse(
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CheckoutResponseToJson(CheckoutResponse instance) =>
    <String, dynamic>{
      'order': instance.order.toJson(),
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      total: (json['total'] as num).toDouble(),
      status: json['status'] as String,
      deliveryDate: json['delivery_date'] as String,
      deliveryTime: json['delivery_time'] as String,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'total': instance.total,
      'status': instance.status,
      'delivery_date': instance.deliveryDate,
      'delivery_time': instance.deliveryTime,
    };
