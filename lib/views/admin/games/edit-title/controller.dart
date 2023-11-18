import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'controller.freezed.dart';
part 'controller.g.dart';

@freezed
class AdminGamesEditTitle with _$AdminGamesEditTitle {
  factory AdminGamesEditTitle({
    required int originalItemHash,
    required GameTitleCompactEntity item,
  }) = _AdminGamesEditTitle;
}

@riverpod
class AdminGamesEditTitleController
    extends _$AdminGamesEditTitleController {
  @override
  FutureOr<AdminGamesEditTitle> build(int id) async {
    final item = await ref.watch(gamesRepositoryProvider).getGameTitle(id);

    return AdminGamesEditTitle(
      originalItemHash: item.data!.hashCode,
      item: item.data!
    );
  }

  void setItem(GameTitleCompactEntity item) {
    state = AsyncData(state.value!.copyWith(item: item));
  }
}
