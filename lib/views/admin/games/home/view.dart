import 'package:agatra/features/domain/entities/game_title.dart';
import 'providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'game_entry.dart';
part 'list.dart';

class AdminGamesHomeView extends StatelessWidget {
  const AdminGamesHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.go('/admin/games/new-title');
            },
            icon: const Icon(Icons.add),
          ),
        ],
        title: const Text("Supported Games"),
      ),
      body: const _GamesList(),
    );
  }
}

