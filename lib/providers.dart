import 'package:agatra/features/data/repository/mock/mock_search_arcade_locations_repository_impl.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/data/sources/storage/storage_service.dart';
import 'package:agatra/features/domain/repository/search_arcade_locations_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return Dio();
}

@riverpod
ApiService apiService(ApiServiceRef ref) {
  return ApiService(ref.watch(dioProvider));
}

@riverpod
StorageService storageService(StorageServiceRef ref) {
  return StorageService(
    const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    ),
  );
}

@riverpod
SearchArcadeLocationsRepository searchArcadeLocationsRepository(
    SearchArcadeLocationsRepositoryRef ref) {
  return MockSearchArcadeLocationsRepository();
}
