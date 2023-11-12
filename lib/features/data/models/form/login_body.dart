import 'package:json_annotation/json_annotation.dart';

part 'login_body.g.dart';

@JsonSerializable()
class LoginBodyModel {
  final String email;
  final String password;

  const LoginBodyModel({
    required this.email,
    required this.password,
  });

  factory LoginBodyModel.fromJson(Map<String, dynamic> json) => _$LoginBodyModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginBodyModelToJson(this);
}