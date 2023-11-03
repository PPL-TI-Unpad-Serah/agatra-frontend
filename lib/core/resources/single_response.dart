// https://stackoverflow.com/q/64595975
import 'package:json_annotation/json_annotation.dart';
import 'base_response.dart';

part 'single_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class SingleResponse<T> extends BaseResponse {
  T data;

  SingleResponse({
    required String message,
    required this.data,
  }) : super(message: message);

  factory SingleResponse.fromJson(Map<String, dynamic> json, T Function(Object?) create) => _$SingleResponseFromJson(json, create);
}