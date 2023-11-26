import 'package:agatra/features/domain/entities/form/new_arcade_machine.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'controller.freezed.dart';
part 'controller.g.dart';

@freezed
class MaintainerNewMachine with _$MaintainerNewMachine {
  factory MaintainerNewMachine({
    required List<GameTitleCompactEntity> titles,
    required bool loadingSelectedTitle,
    GameTitleCompactEntity? selectedTitle,
    List<GameTitleVersionEntity>? versions,
    required int originalItemHash,
    required NewArcadeMachineEntity item,
  }) = _MaintainerNewMachine;
}

@riverpod
class MaintainerNewMachineController extends _$MaintainerNewMachineController {
  @override
  FutureOr<MaintainerNewMachine> build(int arcadeLocationId) async {
    final titles =
        await ref.watch(gamesRepositoryProvider).getGameTitlesCompact();

    final originalItem = NewArcadeMachineEntity(arcadeLocationId: arcadeLocationId);

    return MaintainerNewMachine(
      titles: titles.data!,
      loadingSelectedTitle: false,
      originalItemHash: originalItem.hashCode,
      item: originalItem,
    );
  }

  Future<void> setSelectedTitle(GameTitleCompactEntity title) async {
    state = AsyncData(state.value!.copyWith(
      loadingSelectedTitle: true,
    ));

    final newVersions = await ref
        .read(searchArcadeLocationsRepositoryProvider)
        .getGameTitleVersionsOf(title);
    state = AsyncData(state.value!.copyWith(
      selectedTitle: title,
      loadingSelectedTitle: false,
      versions: newVersions.data!,
      item: state.value!.item.copyWith(game: null),
    ));
  }

  void setItem(NewArcadeMachineEntity item) {
    state = AsyncData(state.value!.copyWith(item: item));
  }
}
