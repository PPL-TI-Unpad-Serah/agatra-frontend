import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/views/arcades/home/arcade_centers_list.dart';
import 'package:agatra/views/arcades/home/arcade_locations_list_provider.dart';
import 'package:agatra/views/arcades/home/cities_list.dart';
import 'package:agatra/views/arcades/home/game_title_versions_list.dart';
import 'package:agatra/views/arcades/home/game_titles_list.dart';
import 'package:agatra/views/arcades/home/search_query_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBottomSheetList extends ConsumerWidget {
  const SearchBottomSheetList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SearchQuery searchQuery = ref.watch(searchQueryStateProvider);
    return ListView(
      padding: const EdgeInsets.only(top: 8),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  ref.read(searchQueryStateProvider.notifier).reset();
                },
                child: const Text("Reset"),
              ),
              FilledButton(
                onPressed: () {
                  ref.read(arcadeLocationsListStateProvider.notifier).setSearchQuery(searchQuery);
                  Navigator.pop(context);
                },
                child: const Text('Filter'),
              ),
            ],
          ),
        ),
        const Divider(),
        InkWell(
          onTap: () async {
            final result = await showDialog<GameTitleEntity>(
              context: context,
              builder: (context) => Dialog(
                insetPadding: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 400),
                    child: const GameTitlesList(),
                  ),
                ),
              ),
            );
            if (result != null) {
              ref.read(searchQueryStateProvider.notifier).setGameTitle(result);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Game",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500),
                ),
                if (searchQuery.gameTitle != null)
                  Text(searchQuery.gameTitle!.name)
                else
                  const Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
        if (searchQuery.gameTitle != null) InkWell(
          onTap: () async {
            final result = await showDialog<GameTitleVersionEntity>(
              context: context,
              builder: (context) => Dialog(
                insetPadding: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 400),
                    child: const GameTitleVersionsList(),
                  ),
                ),
              ),
            );
            if (result != null) {
              ref
                  .read(searchQueryStateProvider.notifier)
                  .setGameTitleVersion(result);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Version",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500),
                ),
                if (searchQuery.gameTitleVersion != null)
                  Text(searchQuery.gameTitleVersion!.name)
                else
                  const Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            final result = await showDialog<ArcadeCenterEntity>(
              context: context,
              builder: (context) => Dialog(
                insetPadding: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 400),
                    child: const ArcadeCentersList(),
                  ),
                ),
              ),
            );

            if (result != null) {
              ref.read(searchQueryStateProvider.notifier).setArcadeCenter(result);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Arcade Center",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500),
                ),
                if (searchQuery.arcadeCenter != null)
                  Text(searchQuery.arcadeCenter!.name)
                else
                  const Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
        const Divider(),
        CheckboxListTile(
          value: searchQuery.sortByNearest,
          title: Text(
            'Sort by nearest',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w500),
          ),
          onChanged: (value) {
            ref.read(searchQueryStateProvider.notifier).setSortByNearest(value!);
          },
        ),
        if (!searchQuery.sortByNearest) InkWell(
          onTap: () async {
            final result = await showDialog<CityEntity>(
              context: context,
              builder: (context) => Dialog(
                insetPadding: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 400),
                    child: const CitiesList(),
                  ),
                ),
              ),
            );
            if (result != null) {
              ref.read(searchQueryStateProvider.notifier).setCity(result);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Place",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500),
                ),
                if (searchQuery.city != null)
                  Text(searchQuery.city!.name)
                else
                const Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
