import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/managers/session_manager.dart';
import 'package:agatra/views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// TODO use code generation syntax for these two providers
final sessionRefreshListener = Provider<ValueNotifier<SessionEntity?>>((ref) {
  final notifier = ValueNotifier<SessionEntity?>(null);
  ref.listen(sessionManagerProvider, (_, next) async { 
    if (next is AsyncData) {
      notifier.value = next.value;
    }
  });
  return notifier;
});


final routerProvider = Provider<AgatraRouter>((ref) => AgatraRouter(ref.watch(sessionRefreshListener)));

class AgatraRouter {
  final ValueNotifier<SessionEntity?> refreshListener;

  AgatraRouter(this.refreshListener);

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
                const ArcadesSearchView(),
            routes: [
              GoRoute(
                path: ':id',
                builder: (BuildContext context, GoRouterState state) =>
                    ArcadesDetailsView(id: int.parse(state.pathParameters['id']!)),
              ),
            ],
          ),
          GoRoute(
            path: 'admin/users',
            builder: (BuildContext context, GoRouterState state) =>
                const AdminUsersHomeView(),
            routes: [
              GoRoute(
                path: ':id',
                builder: (BuildContext context, GoRouterState state) =>
                    const AdminUsersDetailsView(),
              ),
            ],
          ),
          GoRoute(
            path: 'admin/games',
            builder: (BuildContext context, GoRouterState state) =>
                const AdminGamesHomeView(),
            routes: [
              GoRoute(
                path: 'new-title',
                builder: (BuildContext context, GoRouterState state) =>
                    AdminGamesNewTitleView(),
              ),
              GoRoute(
                path: 'new-version/:gameTitleId',
                builder: (BuildContext context, GoRouterState state) =>
                    AdminGamesNewVersionView(
                  gameTitleId: int.parse(state.pathParameters['gameTitleId']!),
                ),
              ),
              GoRoute(
                path: 'edit-title/:id',
                builder: (BuildContext context, GoRouterState state) =>
                    AdminGamesEditTitleView(
                  id: int.parse(state.pathParameters['id']!),
                ),
              ),
              GoRoute(
                path: 'edit-version/:id',
                builder: (BuildContext context, GoRouterState state) =>
                    AdminGamesEditVersionView(
                  id: int.parse(state.pathParameters['id']!),
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'admin/arcade-centers',
            builder: (BuildContext context, GoRouterState state) =>
                const AdminArcadeCentersHomeView(),
            routes: [
              GoRoute(
                path: 'new',
                builder: (BuildContext context, GoRouterState state) =>
                    AdminArcadeCentersNewView(),
              ),
              GoRoute(
                path: 'edit/:id',
                builder: (BuildContext context, GoRouterState state) =>
                    AdminArcadeCentersEditView(id: int.parse(state.pathParameters['id']!)),
              ),
            ],
          ),
          GoRoute(
              path: 'maintainer/edit-location/:id',
              builder: (BuildContext context, GoRouterState state) =>
                  MaintainerEditLocationView(
                      id: int.parse(
                    state.pathParameters['id']!,
              ),
            ),
          ),
          GoRoute(
            path: 'maintainer/edit-machine/:id',
            builder: (BuildContext context, GoRouterState state) =>
                MaintainerEditMachineView(
              id: int.parse(state.pathParameters['id']!),
            ),
          ),
          GoRoute(
            path: 'maintainer/new-location',
            builder: (BuildContext context, GoRouterState state) =>
                MaintainerNewLocationView(),
          ),
          GoRoute(
            path: 'maintainer/new-machine/:arcadeLocationId',
            builder: (BuildContext context, GoRouterState state) =>
                MaintainerNewMachineView(
              arcadeLocationId:
                  int.parse(state.pathParameters['arcadeLocationId']!),
                ),
          ),
          GoRoute(
            path: 'map-picker',
            builder: (BuildContext context, GoRouterState state) =>
                MapPicker(),
          ),
        ],
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) async {
      final loggingIn = state.matchedLocation == '/login' || state.matchedLocation == '/register';
      final loggedIn = refreshListener.value != null;

      if (loggedIn && loggingIn) return '/';

      return null;
    },
  );
}
