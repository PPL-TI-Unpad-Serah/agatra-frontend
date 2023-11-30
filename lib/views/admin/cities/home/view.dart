import 'package:agatra/features/domain/entities/city.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'list.dart';

class AdminCitiesHomeView extends StatelessWidget {
  const AdminCitiesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.go('/admin/cities/new');
            },
          ),
        ],
      ),
      body: const _ArcadeCentersList(),
    );
  }
}