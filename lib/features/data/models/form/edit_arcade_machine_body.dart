import 'package:json_annotation/json_annotation.dart';

part 'edit_arcade_machine_body.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class EditArcadeMachineBody {
    final int versionId;
    final int machineCount;
    final int price;
    final String notes;

    const EditArcadeMachineBody({
      required this.versionId,
      required this.machineCount,
      required this.price,
      required this.notes,
    });

    factory EditArcadeMachineBody.fromJson(Map<String, dynamic> json) => _$EditArcadeMachineBodyFromJson(json);
    Map<String, dynamic> toJson() => _$EditArcadeMachineBodyToJson(this);
  }
