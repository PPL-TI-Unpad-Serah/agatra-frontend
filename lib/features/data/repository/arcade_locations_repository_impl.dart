import 'dart:io';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/domain/entities/arcade_location.dart';
import 'package:agatra/features/domain/entities/arcade_machine.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_location.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_machine.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/repository/arcade_locations_repository.dart';
import 'package:dio/dio.dart';

class ArcadeLocationsRepositoryImpl extends ArcadeLocationsRepository {
  final ApiService apiService;
  final SessionEntity? sessionEntity;

  ArcadeLocationsRepositoryImpl({
    required this.apiService,
    required this.sessionEntity,
  });

  @override
  Future<DataState> createArcadeLocation(NewArcadeLocationEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.createArcadeLocation(
        token: sessionEntity!.token,
        body: convertedBody
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return const DataSuccess(null);
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
  Future<DataState> createArcadeMachine(NewArcadeMachineEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.createArcadeMachine(
        token: sessionEntity!.token,
        body: convertedBody
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return const DataSuccess(null);
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
  Future<DataState> deleteArcadeMachine(ArcadeMachineEntity body) async {
    try {
      final httpResponse = await apiService.deleteArcadeMachine(
        token: sessionEntity!.token,
        id: body.id
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return const DataSuccess(null);
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
  Future<DataState<ArcadeMachineEntity>> getArcadeMachine(int id) async {
    try {
      final httpResponse = await apiService.getArcadeMachine(
        id: id,
      );

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
  Future<DataState> updateArcadeLocation(ArcadeLocationEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.updateArcadeLocation(
        token: sessionEntity!.token,
        id: body.id,
        body: convertedBody
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return const DataSuccess(null);
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
  Future<DataState> updateArcadeMachine(ArcadeMachineEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.updateArcadeMachine(
        token: sessionEntity!.token,
        id: body.id,
        body: convertedBody
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return const DataSuccess(null);
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
  
}