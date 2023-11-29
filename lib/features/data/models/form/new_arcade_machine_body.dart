import 'package:json_annotation/json_annotation.dart';

part 'new_arcade_machine_body.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewArcadeMachineBody {
    final int versionId;
    final int locationId;
    final int machineCount;
    final int price;
    final String notes;

    const NewArcadeMachineBody({
      required this.versionId,
      required this.locationId,
      required this.machineCount,
      required this.price,
      required this.notes,
    });

    factory NewArcadeMachineBody.fromJson(Map<String, dynamic> json) => _$NewArcadeMachineBodyFromJson(json);
    Map<String, dynamic> toJson() => _$NewArcadeMachineBodyToJson(this);
  }
