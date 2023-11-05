import 'package:agatra/features/domain/entities/arcade_location_compact.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/views/arcades/home/search_bottom_sheet.dart';
import 'package:agatra/views/arcades/home/search_query_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ArcadesSearchView extends ConsumerWidget {
  const ArcadesSearchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // merely to have the state initialized and destroyed on the view rather than the bottom sheet widget that gets destroyed on every close
    SearchQuery _ = ref.watch(searchQueryStateProvider);

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          for (int i = 0; i < 12; i++)
            _ArcadeItemCard(
              location: ArcadeLocationCompactEntity(
                id: i,
                name: "Arcade $i",
                games: [
                  for (int j = 0; j < 5; j++)
                    GameTitleVersionEntity(
                      id: i,
                      name: "Game $j",
                      info: "Info $j",
                      title: GameTitleCompactEntity(
                        id: j,
                        name: "Title $j",
                      ),
                    ),
                ],
              ),
            )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            constraints: const BoxConstraints(maxWidth: 640),
            builder: (context) => const SearchBottomSheetList(),
          );
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}

class _ArcadeItemCard extends StatelessWidget {
  final ArcadeLocationCompactEntity location;

  const _ArcadeItemCard({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/arcades/1'),
      child: Card(
        elevation: 1,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(location.name,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  spacing: 8.0,
                  runSpacing: 12.0,
                  children: [
                    for (final version in location.games)
                      _ArcadeChipWidget(item: version)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ArcadeChipWidget extends StatelessWidget {
  final GameTitleVersionEntity item;

  const _ArcadeChipWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiaryContainer.withAlpha(200),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
        child: Text(
          "${item.name} ${item.title.name}",
          style: TextStyle(
            height: 1.2,
            color: Theme.of(context)
                .colorScheme
                .onTertiaryContainer
                .withAlpha(200),
            fontWeight: FontWeight.w500,
            fontSize: Theme.of(context).textTheme.bodySmall!.fontSize!,
          ),
        ),
      ),
    );
  }
}
