import 'package:agatra/views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider =
    Provider<AgatraRouter>((ref) => AgatraRouter());

class AgatraRouter {
  late final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) 
      => const HomeView()
    ),
  ]);
}