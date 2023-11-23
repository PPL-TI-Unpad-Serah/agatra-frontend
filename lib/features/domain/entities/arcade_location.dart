import 'package:agatra/features/domain/entities/arcade_machine.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'arcade_location.freezed.dart';

@freezed
class ArcadeLocationEntity with _$ArcadeLocationEntity {
  factory ArcadeLocationEntity({
    required int id,
    required String name,
    required ArcadeCenterEntity gameCenter,
    required String description,
    required double latitude,
    required double longitude,
    required List<ArcadeMachineEntity> machines,
    required CityEntity city,
  }) = _ArcadeLocationEntity;
}