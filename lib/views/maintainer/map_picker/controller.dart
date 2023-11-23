import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'controller.g.dart';
part 'controller.freezed.dart';

@freezed
class MapPickerState with _$MapPickerState {
  const factory MapPickerState({
    @Default(false) bool previouslyNull,
    LatLng? value,
  }) = _MapPickerState;
}

@riverpod
class MapPickerController extends _$MapPickerController {
  @override
  MapPickerState build() {
    return const MapPickerState(
      previouslyNull: false,
      value: null,
    );
  }

  void setValue(LatLng? value, {bool? previouslyNull}) {
    state = state.copyWith(
      previouslyNull: previouslyNull ?? (state.value == null),
      value: value,
    );
  }
}