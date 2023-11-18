import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_game_title_version.freezed.dart';

@freezed
class NewGameTitleVersionEntity with _$NewGameTitleVersionEntity {
  factory NewGameTitleVersionEntity({
    required String name,
    required String priceInfo,
    required int gameTitleId
  }) = _NewGameTitleVersionEntity;
}