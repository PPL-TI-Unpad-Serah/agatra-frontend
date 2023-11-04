import 'package:agatra/views/arcades/home/search_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArcadesSearchView extends StatelessWidget {
  const ArcadesSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [for (int i = 0; i < 12; i++) _ArcadeItemCard()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            constraints: const BoxConstraints(maxWidth: 640),
            builder: (context) => const SearchBottomSheetList()
          );
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}

class _ArcadeItemCard extends StatelessWidget {
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
              Text("Timezone Bandung Indah Plaza", style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16.0),
              const SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  spacing: 8.0,
                  runSpacing: 12.0,
                  children: [
                    _ArcadeChipWidget(
                        name: 'maimai FiNALE',
                    ),
                    _ArcadeChipWidget(
                        name: 'Pump It Up XX',
                    ),
                    _ArcadeChipWidget(
                        name: 'SOUND VOLTEX EXCEED GEAR',
                    ),
                    _ArcadeChipWidget(
                        name: 'Danz Base',
                    ),
                    _ArcadeChipWidget(
                        name: 'Wangan Midnight Maximum Tune 6RR',
                    ),
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
  final String name;

  const _ArcadeChipWidget({
    super.key,
    required this.name,
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
          name,
          style: TextStyle(
            height: 1.2,
            color: Theme.of(context).colorScheme.onTertiaryContainer.withAlpha(200),
            fontWeight: FontWeight.w500,
            fontSize: Theme.of(context).textTheme.bodySmall!.fontSize!,
          ),
        ),
      ),
    );
  }
}
