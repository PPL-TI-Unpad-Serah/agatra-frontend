import 'package:agatra/features/domain/entities/form/auth_login.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_manager.g.dart';

@riverpod
class SessionManager extends _$SessionManager {
  @override
  FutureOr<SessionEntity?> build() async {
    final storageService = ref.watch(storageServiceProvider);

    if (await storageService.containsKey('token')) {
      final token = await storageService.read('token');

      return SessionEntity(
        token: token!.value,
        user: const UserEntity(
          id: '0',
          name: 'John Doe',
        ),
      );
    }

    return null;
  }

  Future<void> login(AuthLogin data) async {
    state = const AsyncData(
      SessionEntity(
        token: 'test',
        user: UserEntity(
          id: '0',
          name: 'John Doe',
        ),
      ),
    );
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
