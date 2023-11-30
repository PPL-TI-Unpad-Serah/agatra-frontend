import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'controller.freezed.dart';
part 'controller.g.dart';

@freezed
class AdminCitiesEdit with _$AdminCitiesEdit {
  factory AdminCitiesEdit({
    required int originalItemHash,
    required CityEntity item,
  }) = _AdminCitiesEdit;
}

@riverpod
class AdminCitiesEditController
    extends _$AdminCitiesEditController {
  @override
  FutureOr<AdminCitiesEdit> build(int id) async {
    final item = await ref.watch(citiesRepositoryProvider).getCity(id);

    return AdminCitiesEdit(
      originalItemHash: item.data!.hashCode,
      item: item.data!
    );
  }

  void setItem(CityEntity item) {
    state = AsyncData(state.value!.copyWith(item: item));
  }
}
