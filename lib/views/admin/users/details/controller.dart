import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'controller.freezed.dart';
part 'controller.g.dart';

@freezed
class AdminUsersEdit with _$AdminUsersEdit {
  factory AdminUsersEdit({
    required UserEntity originalItem,
    required UserEntity item,
  }) = _AdminUsersEdit;
}

@riverpod
class AdminUsersEditController
    extends _$AdminUsersEditController {
  @override
  FutureOr<AdminUsersEdit> build(int id) async {
    final item = await ref.watch(userManagementRepositoryProvider).getUser(id);

    return AdminUsersEdit(
      originalItem: item.data!,
      item: item.data!
    );
  }

  void setItem(UserEntity item) {
    state = AsyncData(state.value!.copyWith(item: item));
  }
}
