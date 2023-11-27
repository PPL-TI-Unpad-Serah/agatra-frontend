import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/models/storage_item.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_manager.g.dart';

@Riverpod(keepAlive: true)
class SessionManager extends _$SessionManager {
  @override
  FutureOr<SessionEntity?> build() async {
    final storageService = ref.watch(storageServiceProvider);
    final authRepository = ref.watch(authRepositoryProvider);

    if (await storageService.containsKey('token')) {
      final token = await storageService.read('token');
      final user = await authRepository.getUserOf(token!.value);

      if (user is DataSuccess) {
        return SessionEntity(
          token: token.value,
          user: user.data!,
        );
      }
    }

    return null;
  }

  Future<void> login(SessionEntity session) async {
    final storageService = ref.watch(storageServiceProvider);
    await storageService.write(
      StorageItemModel(
        'token',
        session.token,
      ),
    );

    state = AsyncData(session);
  }

  Future<void> logout() async {
    final storageService = ref.watch(storageServiceProvider);

    if (await storageService.containsKey('token')) {
      final token = await storageService.read('token');

      await storageService.delete(token!);
    }

    state = const AsyncData(null);
  }
}
