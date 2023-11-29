import 'package:agatra/features/domain/entities/arcade_location.dart';
import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/managers/session_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agatra/features/domain/entities/arcade_machine.dart';

import 'providers.dart';
part 'content.dart';
part 'machine_card.dart';

class ArcadesDetailsView extends ConsumerWidget {
  final int id;

  const ArcadesDetailsView({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final arcadeLocation = ref.watch(getArcadeLocationProvider(id));

    return Scaffold(
      appBar: AppBar(),
      body: switch (arcadeLocation) {
        AsyncData(:final value) => RefreshIndicator(
            onRefresh: () async {
              return ref.invalidate(getArcadeLocationProvider(id));
            },
            child: _ArcadeLocationContent(location: value),
          ),
        AsyncError(:final error) => Text(
            error.toString(),
          ),
        _ => const Center(
            child: CircularProgressIndicator(),
          ),
      },
    );
  }
}
