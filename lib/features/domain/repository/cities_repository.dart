import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/form/new_city.dart';

abstract class CitiesRepository {
  Future<DataState<CityEntity>> getCity(int id);
  Future<DataState> createCity(NewCityEntity body);
  Future<DataState> updateCity(CityEntity body);
}