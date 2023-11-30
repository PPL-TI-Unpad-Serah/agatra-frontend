import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Future<List<UserEntity>> getPrivilegedUsers (GetPrivilegedUsersRef ref) async {
  final result = await ref.watch(userManagementRepositoryProvider).getPrivilegedUsers();

  if (result is DataFailure) {
    return Future.error(result.error!);
  } else {
    return Future.value(result.data!);
  }
}