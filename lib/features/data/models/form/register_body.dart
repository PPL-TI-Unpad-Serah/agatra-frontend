import 'package:json_annotation/json_annotation.dart';

part 'register_body.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RegisterBodyModel {
  final String username;
  final String email;
  final String password;
  final String confirmPassword;

  const RegisterBodyModel({
    required this.username,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  factory RegisterBodyModel.fromJson(Map<String, dynamic> json) => _$RegisterBodyModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterBodyModelToJson(this);
}