// https://stackoverflow.com/q/64595975
import 'package:json_annotation/json_annotation.dart';
import 'base_response.dart';

part 'list_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ListResponse<T> extends BaseResponse {
  List<T> data;

  ListResponse({
    required String message,
    required this.data,
  }) : super(message: message);

  factory ListResponse.fromJson(Map<String, dynamic> json, T Function(Object?) create) => _$ListResponseFromJson(json, create);
  Map<String, dynamic> toJson(Object Function(T value) toJson) => _$ListResponseToJson(this, toJson);
}