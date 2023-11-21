import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/arcade_location.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Future<ArcadeLocationEntity> getArcadeLocation(GetArcadeLocationRef ref, int id) async {
  final searchArcadeLocationRepository = ref.watch(searchArcadeLocationsRepositoryProvider); 
  
  final result = await searchArcadeLocationRepository.getArcadeLocation(id);

  if (result is DataFailure) {
    return Future.error(result.error!);
  } else {
    return Future.value(result.data!);
  }
}