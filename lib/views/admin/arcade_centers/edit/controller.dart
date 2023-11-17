import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'controller.freezed.dart';
part 'controller.g.dart';

@freezed
class AdminArcadeCentersEdit with _$AdminArcadeCentersEdit {
  factory AdminArcadeCentersEdit({
    required int originalItemHash,
    required ArcadeCenterEntity item,
  }) = _AdminArcadeCentersEdit;
}

@riverpod
class AdminArcadeCentersEditController
    extends _$AdminArcadeCentersEditController {
  @override
  FutureOr<AdminArcadeCentersEdit> build(int id) async {
    final item = await ref.watch(arcadeCentersRepositoryProvider).getArcadeCenter(id);

    return AdminArcadeCentersEdit(
      originalItemHash: item.data!.hashCode,
      item: item.data!
    );
  }

  void setItem(ArcadeCenterEntity item) {
    state = AsyncData(state.value!.copyWith(item: item));
  }
}
