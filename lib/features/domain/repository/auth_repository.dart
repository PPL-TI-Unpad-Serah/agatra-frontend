import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/form/auth_login.dart';
import 'package:agatra/features/domain/entities/form/auth_register.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/entities/user.dart';

abstract class AuthRepository {
  Future<DataState<SessionEntity>> login(AuthLogin loginBody);
  Future<DataState<UserEntity>> getUserOf(String token);

  Future<DataState> register(AuthRegister registerBody);
}