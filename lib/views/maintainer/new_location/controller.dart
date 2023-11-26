import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_location.dart';
import 'package:agatra/providers.dart';
import 'package:agatra/views/maintainer/map_picker/controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'controller.freezed.dart';
part 'controller.g.dart';

@freezed
class MaintainerNewLocation with _$MaintainerNewLocation {
  factory MaintainerNewLocation({
    required List<ArcadeCenterEntity> arcadeCenters,
    required List<CityEntity> cities,
    required int originalItemHash,
    required NewArcadeLocationEntity item,
  }) = _MaintainerNewLocation;
}

@riverpod
class MaintainerNewLocationController extends _$MaintainerNewLocationController {
  @override
  FutureOr<MaintainerNewLocation> build() async {
    final arcadeCenters = await ref.watch(searchArcadeLocationsRepositoryProvider).getArcadeCenters();
    final cities = await ref.watch(searchArcadeLocationsRepositoryProvider).getCities();


    ref.listen<MapPickerState>(mapPickerControllerProvider, (MapPickerState? prev, MapPickerState next) {
      if (prev != null && prev.value != next.value) {
        state = AsyncData(state.value!.copyWith(item: state.value!.item.copyWith(latitude: next.value!.latitude, longitude: next.value!.longitude)));
      }
    });

    final originalItem = NewArcadeLocationEntity();

    return MaintainerNewLocation(
      arcadeCenters: arcadeCenters.data!,
      cities: cities.data!,
      originalItemHash: originalItem.hashCode,
      item: originalItem
    );
  }

  void setItem(NewArcadeLocationEntity item) {
    state = AsyncData(state.value!.copyWith(item: item));
  }

  void setLatLng(LatLng latLng) {
    state = AsyncData(state.value!.copyWith(item: state.value!.item.copyWith(latitude: latLng.latitude, longitude: latLng.longitude)));
  }
}