import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/arcade_location.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'controller.freezed.dart';
part 'controller.g.dart';

@freezed
class MaintainerLocationEdit with _$MaintainerLocationEdit {
  factory MaintainerLocationEdit({
    required List<ArcadeCenterEntity> arcadeCenters,
    required List<CityEntity> cities,
    required int originalItemHash,
    required ArcadeLocationEntity item,
  }) = _MaintainerLocationEdit;
}

@riverpod
class MaintainerLocationEditController extends _$MaintainerLocationEditController {
  @override
  FutureOr<MaintainerLocationEdit> build(int id) async {
    final item = await ref.watch(searchArcadeLocationsRepositoryProvider).getArcadeLocation(id);
    final arcadeCenters = await ref.watch(searchArcadeLocationsRepositoryProvider).getArcadeCenters();
    final cities = await ref.watch(searchArcadeLocationsRepositoryProvider).getCities();

    return MaintainerLocationEdit(
      arcadeCenters: arcadeCenters.data!,
      cities: cities.data!,
      originalItemHash: item.data!.hashCode,
      item: item.data!
    );
  }

  void setItem(ArcadeLocationEntity item) {
    state = AsyncData(state.value!.copyWith(item: item));
  }
}