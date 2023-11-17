import 'package:freezed_annotation/freezed_annotation.dart';

part 'arcade_center.freezed.dart';

@freezed
class ArcadeCenterEntity with _$ArcadeCenterEntity {
  factory ArcadeCenterEntity({
  required int id,
  required String name,
  required String info,
  }) = _ArcadeCenterEntity;
}
