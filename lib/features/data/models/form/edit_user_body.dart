import 'package:json_annotation/json_annotation.dart';

part 'edit_user_body.g.dart';

@JsonSerializable()
class EditUserBody {
  final String role;

  const EditUserBody({
    required this.role,
  });

  factory EditUserBody.fromJson(Map<String, dynamic> json) => _$EditUserBodyFromJson(json);
  Map<String, dynamic> toJson() => _$EditUserBodyToJson(this);
}