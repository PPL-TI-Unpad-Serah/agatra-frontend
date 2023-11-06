import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/views/arcades/home/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArcadeCentersList extends ConsumerStatefulWidget {
  const ArcadeCentersList({Key? key}) : super(key: key);

  @override
  ConsumerState<ArcadeCentersList> createState() => _ArcadeCentersListState();
}

class _ArcadeCentersListState extends ConsumerState<ArcadeCentersList> {
  @override
  Widget build(BuildContext context) {
    final listValue = ref.watch(getArcadeCentersProvider);

    return switch (listValue) {
      AsyncData(:final value) => ListView.builder(
          itemCount: value.length,
          itemBuilder: (BuildContext context, int index) {
            return ArcadeCenterItem(item: value[index]);
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

class ArcadeCenterItem extends StatelessWidget {
  final ArcadeCenterEntity item;
  const ArcadeCenterItem({super.key, required this.item});

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
