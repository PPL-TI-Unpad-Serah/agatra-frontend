import 'package:agatra/features/domain/entities/form/new_city.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'controller.freezed.dart';
part 'controller.g.dart';

@freezed
class AdminNewCities with _$AdminNewCities {
  factory AdminNewCities({
    required int originalItemHash,
    required NewCityEntity item,
  }) = _AdminNewCities;
}

@riverpod
class AdminNewCitiesController
    extends _$AdminNewCitiesController {
  @override
  FutureOr<AdminNewCities> build() async {
    final item = NewCityEntity();

    return AdminNewCities(
      originalItemHash: item.hashCode,
      item: item
    );
  }

  void setItem(NewCityEntity item) {
    state = AsyncData(state.value!.copyWith(item: item));
  }
}
