import 'dart:io';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/form/new_city.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/repository/cities_repository.dart';
import 'package:dio/dio.dart';


class CitiesRepositoryImpl extends CitiesRepository {
  final ApiService apiService;
  final SessionEntity? sessionEntity;

  CitiesRepositoryImpl({
    required this.apiService,
    required this.sessionEntity,
  });

  @override
  Future<DataState> createCity(NewCityEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.createCity(
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
  Future<DataState<CityEntity>> getCity(int id) async {
    try {
      final httpResponse = await apiService.getCity(
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
  Future<DataState> updateCity(CityEntity body) async {
    final convertedBody = body.toFormBody();

    try {
      final httpResponse = await apiService.updateCity(
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
