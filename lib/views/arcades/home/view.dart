import 'package:agatra/views/arcades/home/arcade_locations_list_provider.dart';
import 'package:agatra/views/arcades/home/list.dart';
import 'package:agatra/views/arcades/home/search_bottom_sheet.dart';
import 'package:agatra/views/arcades/home/search_query_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArcadesSearchView extends ConsumerWidget {
  const ArcadesSearchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // merely to have the state initialized and destroyed on the view rather than the bottom sheet widget that gets destroyed on every close
    ref.watch(searchQueryStateProvider);
    ref.watch(arcadeLocationsListStateProvider);

    return Scaffold(
      appBar: AppBar(),
      body: const ArcadeLocationsListView(),
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
