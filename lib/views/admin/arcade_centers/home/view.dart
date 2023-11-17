import 'package:flutter/material.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:go_router/go_router.dart';
import 'providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'list.dart';

class AdminArcadeCentersHomeView extends StatelessWidget {
  const AdminArcadeCentersHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arcade Centers'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.go('/admin/arcade-centers/new');
            },
          ),
        ],
      ),
      body: const _ArcadeCentersList(),
    );
  }
}