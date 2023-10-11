import 'package:agatra/app_router.dart';
import 'package:agatra/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: Agatra()));
}

class Agatra extends ConsumerWidget {
  const Agatra({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider).router;
    return MaterialApp.router(
      theme: AgatraTheme.theme(),
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
