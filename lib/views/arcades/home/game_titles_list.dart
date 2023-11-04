import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/views/arcades/home/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameTitlesList extends ConsumerStatefulWidget {
  const GameTitlesList({Key? key}) : super(key: key);

  @override
  ConsumerState<GameTitlesList> createState() => _GameTitlesListState();
}

class _GameTitlesListState extends ConsumerState<GameTitlesList> {
  @override
  Widget build(BuildContext context) {
    final listValue = ref.watch(getGameTitlesProvider);

    return switch (listValue) {
      AsyncData(:final value) => ListView.builder(
          itemCount: value.length,
          itemBuilder: (BuildContext context, int index) {
            return GameTitleItem(item: value[index]);
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

class GameTitleItem extends StatelessWidget {
  final GameTitleEntity item;
  const GameTitleItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop<GameTitleEntity>(context, item),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(item.name),
      ),
    );
  }
}
