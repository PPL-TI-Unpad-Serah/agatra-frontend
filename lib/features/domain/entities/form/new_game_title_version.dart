import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_game_title_version.freezed.dart';

@freezed
class NewGameTitleVersionEntity with _$NewGameTitleVersionEntity {
  factory NewGameTitleVersionEntity({
    required String title,
    required GameTitleCompactEntity version,
  }) = _NewGameTitleVersionEntity;
}