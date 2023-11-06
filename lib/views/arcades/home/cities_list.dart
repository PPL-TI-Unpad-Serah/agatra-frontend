import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/views/arcades/home/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CitiesList extends ConsumerStatefulWidget {
  const CitiesList({Key? key}) : super(key: key);

  @override
  ConsumerState<CitiesList> createState() => _CitiesListState();
}

class _CitiesListState extends ConsumerState<CitiesList> {
  @override
  Widget build(BuildContext context) {
    final listValue = ref.watch(getCitiesProvider);

    return switch (listValue) {
      AsyncData(:final value) => ListView.builder(
          itemCount: value.length,
          itemBuilder: (BuildContext context, int index) {
            return CityItem(item: value[index]);
          },
          padding: const EdgeInsets.all(16.0),
        ),
      AsyncError(:final error) => Text(
          error.toString(),
        ),
      _ => const Center(
          child: CircularProgressIndicator(),
        ),
    };
  }
}

class CityItem extends StatelessWidget {
  final CityEntity item;
  const CityItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context, item),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(item.name),
      ),
    );
  }
}
