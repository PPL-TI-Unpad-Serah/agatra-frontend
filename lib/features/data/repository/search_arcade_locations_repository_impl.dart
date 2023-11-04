import 'dart:io';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/models/game_title.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/arcade_location_compact.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/features/domain/repository/search_arcade_locations_repository.dart';
import 'package:agatra/views/arcades/home/search_query_provider.dart';
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
        List<GameTitleEntity> items = [];

        for (GameTitleModel item in httpResponse.data.data) {
          items.add(item.toEntity());
        }
        return DataSuccess(items);
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
    GameTitleEntity gameTitle,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<ArcadeCenterEntity>>> getArcadeCenters() async {
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<CityEntity>>> getCities() async {
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<ArcadeLocationCompactEntity>>> getArcadeLocations({
    required int page,
    required SearchQuery query,
  }) async {
    throw UnimplementedError();
  }
}
