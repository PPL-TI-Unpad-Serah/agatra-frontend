import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_game_title.freezed.dart';

@freezed
class NewGameTitleEntity with _$NewGameTitleEntity {
  factory NewGameTitleEntity({
    required String title,
  }) = _NewGameTitleEntity;
}