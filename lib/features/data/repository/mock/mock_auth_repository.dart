import 'package:agatra/features/domain/entities/form/auth_login.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/features/domain/repository/auth_repository.dart';

class MockAuthRepository extends AuthRepository {
  @override
  Future<SessionEntity> login(AuthLogin loginBody) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const SessionEntity(
      token: 'token',
      user: UserEntity(
        id: '0',
        name: 'John Doe',
      ),
    );
  }

  @override
  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 1000));
  }
}