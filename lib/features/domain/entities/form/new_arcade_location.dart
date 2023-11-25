import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_arcade_location.freezed.dart';

@freezed
class NewArcadeLocationEntity with _$NewArcadeLocationEntity {
  factory NewArcadeLocationEntity ({
    String? name,
    ArcadeCenterEntity? gameCenter,
    String? description,
    double? latitude,
    double? longitude,
    CityEntity? city,
  }) = _NewArcadeLocationEntity;
}