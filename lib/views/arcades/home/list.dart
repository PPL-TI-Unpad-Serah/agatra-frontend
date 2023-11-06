import 'package:agatra/features/domain/entities/arcade_location_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/views/arcades/home/arcade_locations_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ArcadeLocationsListView extends ConsumerStatefulWidget {
  const ArcadeLocationsListView({super.key});

  @override
  ConsumerState<ArcadeLocationsListView> createState() =>
      _ArcadeLocationsListViewState();
}

class _ArcadeLocationsListViewState
    extends ConsumerState<ArcadeLocationsListView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final postsProvider = ref.watch(arcadeLocationsListStateProvider);

    return postsProvider.when(
      data: (state) {
        return ListView.builder(
          controller: _scrollController,
          itemCount: state.posts.length,
          itemBuilder: (context, index) {
            final post = state.posts[index];
            return _ArcadeItemCard(location: post);
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text(err.toString())),
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
