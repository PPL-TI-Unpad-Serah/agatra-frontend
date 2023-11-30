import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';

@freezed
class CityEntity with _$CityEntity {
  factory CityEntity({
    required int id,
    required String name,
  }) = _CityEntity;
}