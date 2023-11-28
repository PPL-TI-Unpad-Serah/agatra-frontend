import 'dart:io';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/domain/entities/form/new_game_title.dart';
import 'package:agatra/features/domain/entities/form/new_game_title_version.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/repository/games_repository.dart';
import 'package:dio/dio.dart';

class GamesRepositoryImpl extends GamesRepository {
  final ApiService apiService;
  final SessionEntity? sessionEntity;

  GamesRepositoryImpl({
    required this.apiService,
    required this.sessionEntity,
  });

  @override
  Future<DataState> createGameTitle(NewGameTitleEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.createGameTitle(
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
  Future<DataState> createGameTitleVersion(NewGameTitleVersionEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.createGameTitleVersion(
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
  Future<DataState<GameTitleCompactEntity>> getGameTitle(int id) async {
    try {
      final httpResponse = await apiService.getGameTitle(
        id: id
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        final result = httpResponse.data.data.toEntity();

        return DataSuccess(
          GameTitleCompactEntity(
            id: result.id,
            name: result.name,
          )
        );
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
  Future<DataState<GameTitleVersionEntity>> getGameTitleVersion(int id) async {
    try {
      final httpResponse = await apiService.getGameTitleVersion(
        id: id
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
  Future<DataState<List<GameTitleCompactEntity>>> getGameTitlesCompact() async {
    try {
      final httpResponse = await apiService.getGameTitles();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data
            .map(
              (e) => GameTitleCompactEntity(
                id: e.id,
                name: e.name,
              ),
            )
              .toList(),
        );

      } else {
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
  Future<DataState> updateGameTitle(GameTitleCompactEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.updateGameTitle(
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
  Future<DataState> updateGameTitleVersion(GameTitleVersionEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.updateGameTitleVersion(
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