import 'package:agatra/features/domain/entities/form/auth_login.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/features/domain/repository/auth_repository.dart';

class MockAuthRepository extends AuthRepository {
  @override
  Future<SessionEntity> login(AuthLogin loginBody) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    if (loginBody.password == "admin") {
      return const SessionEntity(
        token: 'admin',
        user: UserEntity(
          id: '0',
          role: UserRole.admin,
          name: 'Admin',
        ),
      );
    }

    if (loginBody.password == "maintainer") {
      return const SessionEntity(
        token: 'maintainer',
        user: UserEntity(
          id: '0',
          role: UserRole.maintainer,
          name: 'Maintainer',
        ),
      );
    }

    return const SessionEntity(
      token: 'token',
      user: UserEntity(
        id: '0',
        role: UserRole.user,
        name: 'John Doe',
      ),
    );

  }

  @override
  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 1000));
  }
}