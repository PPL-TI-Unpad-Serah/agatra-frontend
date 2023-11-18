
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_title_version.freezed.dart';

@freezed
class GameTitleVersionEntity with _$GameTitleVersionEntity {
  factory GameTitleVersionEntity({
    required int id,
    required String name,
    required GameTitleCompactEntity title,
    required String info,
  }) = _GameTitleVersionEntity;
}