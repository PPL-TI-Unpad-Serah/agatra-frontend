import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/managers/session_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'drawer.dart';
part 'weather_card.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const _HomeDrawer(),
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
          const _WeatherCard(),
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
            sessionManager.value!.user.username,
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
