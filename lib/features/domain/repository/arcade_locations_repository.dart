import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/arcade_location.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_location.dart';
import 'package:agatra/features/domain/entities/arcade_machine.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_machine.dart';

abstract class ArcadeLocationsRepository {
  Future<DataState> createArcadeLocation(NewArcadeLocationEntity body);
  Future<DataState> updateArcadeLocation(ArcadeLocationEntity body);

  Future<DataState<ArcadeMachineEntity>> getArcadeMachine(int id);
  Future<DataState> createArcadeMachine(NewArcadeMachineEntity body);
  Future<DataState> updateArcadeMachine(ArcadeMachineEntity body);
  Future<DataState> deleteArcadeMachine(ArcadeMachineEntity body);
}