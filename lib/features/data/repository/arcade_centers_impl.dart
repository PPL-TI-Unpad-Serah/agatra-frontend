import 'dart:io';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_center.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/repository/arcade_centers_repository.dart';
import 'package:dio/dio.dart';


class ArcadeCentersRepositoryImpl extends ArcadeCentersRepository {
  final ApiService apiService;
  final SessionEntity? sessionEntity;

  ArcadeCentersRepositoryImpl({
    required this.apiService,
    required this.sessionEntity,
  });

  @override
  Future<DataState> createArcadeCenter(NewArcadeCenterEntity body) async {
    final convertedBody = body.toModel();

    try {
      final httpResponse = await apiService.createArcadeCenter(
        token: sessionEntity!.token,
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
  
  @override
  Future<DataState<ArcadeCenterEntity>> getArcadeCenter(int id) async {
    try {
      final httpResponse = await apiService.getArcadeCenter(
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
  Future<DataState> updateArcadeCenter(ArcadeCenterEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.updateArcadeCenter(
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
