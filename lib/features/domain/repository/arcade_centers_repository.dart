import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_center.dart';

abstract class ArcadeCentersRepository {
  Future<DataState<ArcadeCenterEntity>> getArcadeCenter(int id);
  Future<DataState> createArcadeCenter(NewArcadeCenterEntity body);
  Future<DataState> updateArcadeCenter(ArcadeCenterEntity body);
}