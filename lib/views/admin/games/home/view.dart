import 'package:flutter/material.dart';

class AdminGamesHomeView extends StatelessWidget {
  const AdminGamesHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  // TODO: fix render overflow
                  title: const Text("Add Game"),
                  content: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Name",
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Cancel",
                      ),
                    ),
                    FilledButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Save",
                      ),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0).copyWith(bottom: 24.0),
            child: Text(
              "Supported Games",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const _GameEntry(
            name: "SOUND VOLTEX",
            versions: [
              "BOOTH",
              "infinite infection",
              "GRAVITY WARS",
              "HEAVENLY HAVEN",
              "VIVID WAVE",
              "EXCEED GEAR",
            ],
          ),
          const _GameEntry(
            name: "Beatmania IIDX",
            versions: [
              "1st Style",
              "substream",
              "2nd Style",
              "3rd Style",
              "4th Style",
              "5th Style",
              "6th Style",
              "7th Style",
              "8th Style",
              "9th Style",
              "10th Style",
              "IIDX RED",
              "HAPPY SKY",
              "Distorted",
              "GOLD",
              "DJ TROOPERS",
              "EMPRESS",
              "SIRIUS",
              "Resort Anthem",
              "Lincle",
              "tricoro",
              "SPADA",
              "PENDUAL",
              "copula",
              "SINOBUZ",
              "CANNON BALLERS",
              "Rootage",
              "HEROIC VERSE",
              "BISTROVER",
              "CastHour",
              "RESIDENT",
              "EPOLIS"
            ],
          ),
          const _GameEntry(
            name: "Dance Dance Revolution",
            versions: [
              "1st Mix",
              "2nd Mix",
              "3rd Mix",
              "4th Mix",
              "5th Mix",
              "MAX",
              "MAX2",
              "EXTREME",
              "SuperNOVA",
              "SuperNOVA2",
              "X",
              "X2",
              "X3 vs 2nd Mix",
              "2013",
              "2014",
              "A",
              "A20",
            ],
          ),
          const _GameEntry(
            name: "CHUNITHM",
            versions: [
              "1st",
              "AIR",
              "STAR",
              "CRYSTAL",
              "PARADISE",
              "NEW",
              "SUN",
            ],
          ),
        ],
      ),
    );
  }
}

class _GameEntry extends StatelessWidget {
  final String name;
  final List<String> versions;
  const _GameEntry({
    super.key,
    required this.name,
    required this.versions,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(name),
      children: [
        for (final version in versions)
          ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            dense: true,
            title: Text(
              version,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  // TODO: fix render overflow
                  title: const Text("Edit Version"),
                  content: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Version",
                        ),
                      ),
                      SizedBox(height: 4.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Notes",
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Cancel",
                      ),
                    ),
                    FilledButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Save",
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          title: Icon(
            Icons.add,
            size: Theme.of(context).textTheme.bodyLarge!.fontSize,
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                // TODO: fix render overflow
                title: const Text("Add Version"),
                content: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Version",
                      ),
                    ),
                    SizedBox(height: 4.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Notes",
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                    ),
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Save",
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
