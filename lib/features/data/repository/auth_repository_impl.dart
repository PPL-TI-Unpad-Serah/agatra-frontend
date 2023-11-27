import 'dart:io';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/domain/entities/form/auth_login.dart';
import 'package:agatra/features/domain/entities/form/auth_register.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/features/domain/repository/auth_repository.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl extends AuthRepository {
  final ApiService apiService;

  AuthRepositoryImpl({
    required this.apiService,
  });

  @override
  Future<DataState<SessionEntity>> login(AuthLogin loginBody) async {
    final convertedBody = loginBody.toModel();

    try {
      final httpResponse = await apiService.login(body: convertedBody);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.toEntity());
      } 
      else {
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
  Future<DataState<UserEntity>> getUserOf(String token) async {
    try {
      final httpResponse = await apiService.getProfile(token: token);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.toEntity());
      } 
      else {
        return DataFailure(
          DioException(
            error: httpResponse.data.message,
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
  Future<DataState> register(AuthRegister registerBody) async {
    final convertedBody = registerBody.toModel();

    try {
      final httpResponse = await apiService.register(body: convertedBody);

      if (httpResponse.response.statusCode == HttpStatus.created) {
        return DataSuccess(httpResponse.data.data);
      } 
      else {
        return DataFailure(
          DioException(
            error: httpResponse.data.message,
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