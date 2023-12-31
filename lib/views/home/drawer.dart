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
          ],
          if (sessionManager.value != null) ...[
            if (sessionManager.value!.user.role == UserRole.maintainer ||
                sessionManager.value!.user.role == UserRole.admin) ...[
              ListTile(
                title: const Text('Create New Arcade Location'),
                onTap: () {
                  Navigator.pop(context);
                  context.go('/maintainer/new-location');
                },
              ),
              const Divider(),
            ],
            if (sessionManager.value!.user.role == UserRole.admin) ...[
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
              ListTile(
                title: const Text('Manage Supported Cities'),
                onTap: () {
                  Navigator.pop(context);
                  context.go('/admin/cities');
                },
              ),
              ListTile(
                title: const Text('Manage Supported Arcade Centers'),
                onTap: () {
                  Navigator.pop(context);
                  context.go('/admin/arcade-centers');
                },
              ),
              const Divider(),
            ],
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
