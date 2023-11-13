import 'package:agatra/features/data/models/storage_item.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_manager.g.dart';

@Riverpod(keepAlive: true)
class SessionManager extends _$SessionManager {
  @override
  FutureOr<SessionEntity?> build() async {
    final storageService = ref.watch(storageServiceProvider);

    if (await storageService.containsKey('token')) {
      final token = await storageService.read('token');

      return SessionEntity(
        token: token!.value,
        user: UserEntity(
          id: '0',
          name: 'John Doe',
          role: UserRole.fromName(token.value),
        ),
      );
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
