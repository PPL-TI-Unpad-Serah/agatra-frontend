import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/user.dart';

abstract class UserManagementRepository {
  Future<DataState<List<UserEntity>>> getPrivilegedUsers();
  Future<DataState<List<UserEntity>>> searchUsers(String? name);
  Future<DataState<UserEntity>> getUser(int id);
  Future<DataState> updateUser(UserEntity body);
}