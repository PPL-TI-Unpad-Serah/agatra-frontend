import 'package:agatra/features/domain/entities/form/auth_login.dart';
import 'package:agatra/features/domain/entities/session.dart';

abstract class AuthRepository {
  Future<SessionEntity> login(AuthLogin loginBody);
  Future<void> logout();
}