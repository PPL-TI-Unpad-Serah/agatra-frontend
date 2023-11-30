part of 'view.dart';

class _PrivilegedList extends ConsumerWidget {
  const _PrivilegedList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(getPrivilegedUsersProvider);

    List<Widget> items = [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        child: Text(
          "Admins and Maintainers",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    ];

    switch (list) {
      case AsyncData(:final value):
        {
          items.addAll(
            value.map(
              (user) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  elevation: 0,
                  child: InkWell(
                    onTap: () {
                      context.go('/admin/users/${user.id}');
                    },
                    child:_SearchUserItem(user: user),
                  ),
                );
              },
            ),
          );
        }

      case AsyncError(:final error):
        {
          items.add(Text(
            error.toString(),
          ));
        }
      case _:
        {
          items.add(
            const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
    }

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      children: items,
    );
  }
}
