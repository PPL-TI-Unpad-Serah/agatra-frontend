import 'package:agatra/managers/session_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // error: this returns AsyncLoading first then AsyncData, even after warm up on main
    final sessionManager = ref.watch(sessionManagerProvider);

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
              child: const Text('Agatra'),
            ),
            if (sessionManager.value == null) ...[
              ListTile(
                title: const Text('Login'),
                onTap: () {
                  Navigator.pop(context);
                  context.go('/login');
                },
              ),
              const Divider(),
            ],
            ListTile(
              title: const Text('Manage Users'),
              onTap: () {
                Navigator.pop(context);
                context.go('/admin/users');
              },
            ),
            ListTile(
              title: const Text('Manage Supported Games'),
              onTap: () {
                Navigator.pop(context);
                context.go('/admin/games');
              },
            ),
            if (sessionManager.value != null) ...[
              const Divider(),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  ref.read(sessionManagerProvider.notifier).logout();
                  Navigator.pop(context);
                },
              ),
            ]
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat ${getTimeOfDayStatus(TimeOfDay.now())},",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const _UserLine(),
            ],
          ),
          const SizedBox(height: 24.0),
          SizedBox(
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Align(
                        child: Icon(
                          Icons.cloud,
                          size: 64,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Jakarta, Indonesia",
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            "Mendung",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 4.0),
                          const Text("18°C"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              const Text(
                "Mau main di mana hari ini?",
              ),
              const SizedBox(height: 8.0),
              FilledButton.icon(
                onPressed: () {
                  context.go('/arcades');
                },
                icon: const Icon(Icons.search),
                label: const Text("Cari permainan"),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _UserLine extends ConsumerWidget {
  const _UserLine();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessionManager = ref.watch(sessionManagerProvider);

    return Row(
      children: [
        if (sessionManager.value != null) ...[
          Text(
            sessionManager.value!.user.name,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8.0),
          Transform(
            transform: Transform.scale(
              scale: Theme.of(context).textTheme.bodyLarge!.fontSize! /
                  Theme.of(context).textTheme.bodyMedium!.fontSize!,
            ).transform,
            child: sessionManager.value!.user.role.chipWidget,
          ),
        ] else ...[
          Text(
            "Guest",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
        const SizedBox(width: 8.0),
      ],
    );
  }
}

String getTimeOfDayStatus(TimeOfDay timeOfDay) {
  final hour = timeOfDay.hour;

  if (hour >= 5 && hour < 12) {
    return "pagi";
  } else if (hour >= 12 && hour < 15) {
    return "siang";
  } else if (hour >= 14 && hour < 18) {
    return "sore";
  } else {
    return "malam";
  }
}