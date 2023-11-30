part of 'view.dart';

class _UserSearchBar extends ConsumerWidget {
  const _UserSearchBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SearchAnchor.bar(
      barHintText: 'Search all users',
      constraints: const BoxConstraints(minHeight: 40.0),
      suggestionsBuilder: (context, controller) async {
        final search = await ref
            .watch(userManagementRepositoryProvider)
            .searchUsers(controller.text);

        if (search.data!.isEmpty && context.mounted) {
          return [
            ListTile(
              title: Text(
                'No users found',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ];
        }

        return search.data!
            .map(
              (e) => ListTile(
                title: _SearchUserItem(user: e),
                onTap: () {
                  controller.closeView(null);
                  context.go('/admin/users/${e.id}');
                },
              ),
            )
            .toList();
      },
    );
  }
}
