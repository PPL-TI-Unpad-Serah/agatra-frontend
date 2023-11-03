// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleResponse<T> _$SingleResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SingleResponse<T>(
      message: json['message'] as String,
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$SingleResponseToJson<T>(
  SingleResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'data': toJsonT(instance.data),
    };
