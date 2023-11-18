import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'controller.freezed.dart';
part 'controller.g.dart';

@freezed
class AdminGamesEditVersion with _$AdminGamesEditVersion {
  factory AdminGamesEditVersion({
    required int originalItemHash,
    required GameTitleVersionEntity item,
  }) = _AdminGamesEditVersion;
}

@riverpod
class AdminGamesEditVersionController
    extends _$AdminGamesEditVersionController {
  @override
  FutureOr<AdminGamesEditVersion> build(int id) async {
    final item = await ref.watch(gamesRepositoryProvider).getGameTitleVersion(id);

    return AdminGamesEditVersion(
      originalItemHash: item.data!.hashCode,
      item: item.data!
    );
  }

  void setItem(GameTitleVersionEntity item) {
    state = AsyncData(state.value!.copyWith(item: item));
  }
}
