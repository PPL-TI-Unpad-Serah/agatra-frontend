import 'dart:io';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/arcade_location.dart';
import 'package:agatra/features/domain/entities/arcade_location_compact.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/features/domain/repository/search_arcade_locations_repository.dart';
import 'package:agatra/views/arcades/home/applied_search_query.dart';
import 'package:dio/dio.dart';

class SearchArcadeLocationsRepositoryImpl
    extends SearchArcadeLocationsRepository {
  final ApiService apiService;

  SearchArcadeLocationsRepositoryImpl({
    required this.apiService,
  });

  @override
  Future<DataState<List<GameTitleEntity>>> getGameTitles() async {
    try {
      final httpResponse = await apiService.getGameTitles();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.map((e) => e.toEntity()).toList());

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
  Future<DataState<List<GameTitleVersionEntity>>> getGameTitleVersionsOf(
    GameTitleCompactEntity gameTitle,
  ) async {
    try {
      final httpResponse = await apiService.gameTitleVersionOf(
        gameTitleIid: gameTitle.id,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.map((e) => e.toEntity()).toList());
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
  Future<DataState<List<ArcadeCenterEntity>>> getArcadeCenters() async {
    try {
      final httpResponse = await apiService.getArcadeCenters();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.map((e) => e.toEntity()).toList());
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
  Future<DataState<List<CityEntity>>> getCities() async {
    try {
      final httpResponse = await apiService.getCities();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.map((e) => e.toEntity()).toList());
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
  Future<DataState<List<ArcadeLocationCompactEntity>>> getArcadeLocations({
    required int page,
    required AppliedSearchQuery query,
  }) async {
    try {
      final httpResponse = await apiService.getArcadeLocations(
        page: page,
        lat: query.position?.latitude,
        long: query.position?.longitude,
        cityId: query.city?.id,
        gameTitleId: query.gameTitle?.id,
        gameTitleVersionId: query.gameTitleVersion?.id,
        arcadeCenterId: query.arcadeCenter?.id,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.map((e) => e.toEntity()).toList());
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
  Future<DataState<ArcadeLocationEntity>> getArcadeLocation(int id) async {
    try {
      final httpResponse = await apiService.getArcadeLocation(id: id);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data.toEntity());
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
}
