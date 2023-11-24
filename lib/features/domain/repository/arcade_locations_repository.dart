import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/arcade_location.dart';
import 'package:agatra/features/domain/entities/arcade_machine.dart';

abstract class ArcadeLocationsRepository {
  Future<DataState> updateArcadeLocation(ArcadeLocationEntity body);

  Future<DataState<ArcadeMachineEntity>> getArcadeMachine(int id);
  Future<DataState> updateArcadeMachine(ArcadeMachineEntity body);
}