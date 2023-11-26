import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/views/arcades/home/providers.dart';
import 'package:agatra/views/arcades/home/search_query_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameTitleVersionsList extends ConsumerStatefulWidget {
  const GameTitleVersionsList({Key? key}) : super(key: key);

  @override
  ConsumerState<GameTitleVersionsList> createState() => _GameTitleVersionsListState();
}

class _GameTitleVersionsListState extends ConsumerState<GameTitleVersionsList> {
  @override
  Widget build(BuildContext context) {
    final title = ref.watch(searchQueryStateProvider).gameTitle;
    final listValue = ref.watch(getGameTitleVersionsOfProvider(GameTitleCompactEntity(id: title!.id, name: title.name)));

    return switch (listValue) {
      AsyncData(:final value) => ListView.builder(
          itemCount: value.length,
          itemBuilder: (BuildContext context, int index) {
            return GameTitleVersionsItem(item: value[index]);
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

class GameTitleVersionsItem extends StatelessWidget {
  final GameTitleVersionEntity item;
  const GameTitleVersionsItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop<GameTitleVersionEntity>(context, item),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(item.name),
      ),
    );
  }
}
