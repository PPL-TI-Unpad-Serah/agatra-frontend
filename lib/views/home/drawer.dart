part of 'view.dart';

class _HomeDrawer extends ConsumerWidget {
  const _HomeDrawer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessionManager = ref.watch(sessionManagerProvider);

    return Drawer(
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
    );
  }
}
