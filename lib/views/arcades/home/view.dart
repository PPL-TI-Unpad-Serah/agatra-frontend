import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/views/arcades/home/cities_picker_dialog.dart';
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
            builder: (context) {
              return ListView(
                padding: const EdgeInsets.only(top: 8),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("Reset"),
                        ),
                        FilledButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Filter'),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  InkWell(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        builder: (context) => Dialog(
                            insetPadding: const EdgeInsets.all(16),
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: ConstrainedBox(
                                constraints:
                                    const BoxConstraints(maxHeight: 400),
                                child: ListView(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Sound Voltex"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Beatmania IIDX"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("maimai"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Chunithm"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text(
                                            "Wangan Midnight Maximum Tune"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Pump It Up"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Dance Dance Revolution"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Ongeki"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Nostalgia"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Jubeat"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Time Crisis"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      );
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
                          const Text("Chunithm"),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        builder: (context) => Dialog(
                            insetPadding: const EdgeInsets.all(16),
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: ConstrainedBox(
                                constraints:
                                    const BoxConstraints(maxHeight: 400),
                                child: ListView(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Sound Voltex"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Beatmania IIDX"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("maimai"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Chunithm"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text(
                                            "Wangan Midnight Maximum Tune"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Pump It Up"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Dance Dance Revolution"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Ongeki"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Nostalgia"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Jubeat"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Time Crisis"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      );
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
                          const Text("Sun"),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        builder: (context) => Dialog(
                            insetPadding: const EdgeInsets.all(16),
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: ConstrainedBox(
                                constraints:
                                    const BoxConstraints(maxHeight: 400),
                                child: ListView(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Sound Voltex"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Beatmania IIDX"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("maimai"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Chunithm"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text(
                                            "Wangan Midnight Maximum Tune"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Pump It Up"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Dance Dance Revolution"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Ongeki"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Nostalgia"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Jubeat"),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text("Time Crisis"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      );
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
                          const Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  InkWell(
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
                          const Text("Bandung"),
                        ],
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    value: false,
                    title: Text(
                      'Sort by nearest',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w500),
                    ),
                    onChanged: (value) {},
                  ),
                ],
              );
            },
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
