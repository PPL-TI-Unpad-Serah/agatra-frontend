import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_arcade_center.freezed.dart';

@freezed
class NewArcadeCenterEntity with _$NewArcadeCenterEntity {
  factory NewArcadeCenterEntity({
    required String name,
    required String info,
  }) = _NewArcadeCenterEntity;
}