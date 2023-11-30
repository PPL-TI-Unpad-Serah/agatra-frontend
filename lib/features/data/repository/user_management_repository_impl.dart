import 'dart:io';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/features/domain/repository/user_management_repository.dart';
import 'package:dio/dio.dart';

class UserManagementRepositoryImpl implements UserManagementRepository {
  final ApiService apiService;
  final SessionEntity? sessionEntity;

  UserManagementRepositoryImpl({
    required this.apiService,
    required this.sessionEntity,
  });
  @override
  Future<DataState<List<UserEntity>>> getPrivilegedUsers() async {
    try {
      final httpResponse = await apiService.getPrivilegedUsers(
        token: sessionEntity!.token,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.map((e) => e.toEntity()).toList());
      } else {
        return DataFailure(
          DioException(
            error: httpResponse.data.message.toString(),
            response: httpResponse.response,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(e);
    }
  }

  @override
  Future<DataState<UserEntity>> getUser(int id) async {
  try {
      final httpResponse = await apiService.getUser(
        token: sessionEntity!.token,
        id: id
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.toEntity());
      } else {
        return DataFailure(
          DioException(
            error: httpResponse.data.message.toString(),
            response: httpResponse.response,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(e);
    }
  }

  @override
  Future<DataState<List<UserEntity>>> searchUsers(String? name) async {
  try {
      final httpResponse = await apiService.getUsers(
        token: sessionEntity!.token,
        nameSearch: name,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.map((e) => e.toEntity()).toList());
      } else {
        return DataFailure(
          DioException(
            error: httpResponse.data.message.toString(),
            response: httpResponse.response,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(e);
    }
  }

  @override
  Future<DataState> updateUser(UserEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.updateUser(
        token: sessionEntity!.token,
        id: body.id,
        body: convertedBody,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return const DataSuccess(null);
      } else {
        return DataFailure(
          DioException(
            error: httpResponse.data.message.toString(),
            response: httpResponse.response,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(e);
    }
  }
}