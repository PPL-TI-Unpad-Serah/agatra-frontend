import 'package:flutter/material.dart';

class ArcadesSearchView extends StatelessWidget {
  const ArcadesSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Outlined'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
                                constraints: const BoxConstraints(maxHeight: 400),
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
                                constraints: const BoxConstraints(maxHeight: 400),
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
                                constraints: const BoxConstraints(maxHeight: 400),
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