import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Future<List<CityEntity>> getCities(GetCitiesRef ref) async {
  final searchArcadeLocationRepository = ref.watch(searchArcadeLocationsRepositoryProvider); 
  
  final result = await searchArcadeLocationRepository.getCities();

  if (result is DataFailure) {
    return Future.error(result.error!);
  } else {
    return Future.value(result.data!);
  }
}