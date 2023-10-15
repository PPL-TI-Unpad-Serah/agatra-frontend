import 'package:agatra/views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<AgatraRouter>((ref) => AgatraRouter());

class AgatraRouter {
  late final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeView(),
        routes: [
          GoRoute(
            path: 'login',
            builder: (BuildContext context, GoRouterState state) => LoginView(),
          ),
          GoRoute(
            path: 'register',
            builder: (BuildContext context, GoRouterState state) =>
                RegisterView(),
          ),
          GoRoute(
            path: 'arcades',
            builder: (BuildContext context, GoRouterState state) =>
                ArcadesSearchView(),
            routes: [
              GoRoute(
                path: ':id',
                builder: (BuildContext context, GoRouterState state) =>
                    ArcadesDetailsView(),
              ),
            ],
          ),
          GoRoute(
            path: 'admin/users',
            builder: (BuildContext context, GoRouterState state) =>
                AdminUsersHomeView(),
            routes: [
              GoRoute(
                path: ':id',
                builder: (BuildContext context, GoRouterState state) =>
                    AdminUsersDetailsView(),
              ),
            ],
          ),
          GoRoute(
            path: 'admin/games',
            builder: (BuildContext context, GoRouterState state) =>
                AdminGamesView(),
          )
        ],
      ),
    ],
  );
}
