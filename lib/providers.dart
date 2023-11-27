import 'package:agatra/features/data/repository/auth_repository_impl.dart';
import 'package:agatra/features/data/repository/mock/mock_arcade_centers_repository.dart';
import 'package:agatra/features/data/repository/mock/mock_arcade_locations_repository.dart';
import 'package:agatra/features/data/repository/mock/mock_games_repository.dart';
import 'package:agatra/features/data/repository/search_arcade_locations_repository_impl.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/data/sources/storage/storage_service.dart';
import 'package:agatra/features/domain/repository/arcade_centers_repository.dart';
import 'package:agatra/features/domain/repository/arcade_locations_repository.dart';
import 'package:agatra/features/domain/repository/auth_repository.dart';
import 'package:agatra/features/domain/repository/games_repository.dart';
import 'package:agatra/features/domain/repository/search_arcade_locations_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  return Dio();
}

@Riverpod(keepAlive: true)
ApiService apiService(ApiServiceRef ref) {
  return ApiService(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
StorageService storageService(StorageServiceRef ref) {
  return StorageService(
    const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    ),
  );
}

@Riverpod(keepAlive: true)
SearchArcadeLocationsRepository searchArcadeLocationsRepository(
    SearchArcadeLocationsRepositoryRef ref) {
  return SearchArcadeLocationsRepositoryImpl(apiService: ref.watch(apiServiceProvider));
}

@Riverpod(keepAlive: true)
ArcadeCentersRepository arcadeCentersRepository(
  ArcadeCentersRepositoryRef ref) {
  return MockArcadeCentersRepository();
}

@Riverpod(keepAlive: true)
ArcadeLocationsRepository arcadeLocationsRepository(
    ArcadeLocationsRepositoryRef ref) {
  return MockArcadeLocationsRepository();
}

@Riverpod(keepAlive: true)
GamesRepository gamesRepository(GamesRepositoryRef ref) {
  return MockGamesRepository();
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(apiService: ref.watch(apiServiceProvider));
}