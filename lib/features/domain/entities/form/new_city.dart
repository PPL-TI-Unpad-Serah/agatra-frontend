import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_city.freezed.dart';

@freezed
class NewCityEntity with _$NewCityEntity {
  factory NewCityEntity({
    String? name,
  }) = _NewCityEntity;
}