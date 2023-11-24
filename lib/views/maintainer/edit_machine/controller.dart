import 'package:agatra/features/domain/entities/arcade_machine.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'controller.freezed.dart';
part 'controller.g.dart';

@freezed
class MaintainerMachineEdit with _$MaintainerMachineEdit {
  factory MaintainerMachineEdit({
    required int originalItemHash,
    required List<GameTitleVersionEntity> versions,
    required ArcadeMachineEntity item,
  }) = _MaintainerMachineEdit;
}

@riverpod
class MaintainerMachineEditController extends _$MaintainerMachineEditController {
  @override
  FutureOr<MaintainerMachineEdit> build(int id) async {
    final item = await ref.watch(arcadeLocationsRepositoryProvider).getArcadeMachine(id);
    final versions = await ref.watch(searchArcadeLocationsRepositoryProvider).getGameTitleVersionsOf(item.data!.game.title);

    return MaintainerMachineEdit(
      originalItemHash: item.data!.hashCode,
      versions: versions.data!,
      item: item.data!
    );
  }

  void setItem(ArcadeMachineEntity item) {
    state = AsyncData(state.value!.copyWith(item: item));
  }
}