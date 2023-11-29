part of 'view.dart';

class _GameEntry extends StatelessWidget {
  final GameTitleEntity title;
  const _GameEntry({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title.name),
      initiallyExpanded: true,
      trailing: IconButton(
        icon: const Icon(Icons.edit),
        onPressed: () {
          context.go('/admin/games/edit-title/${title.id}');
        },
      ),
      children: [
        for (final version in title.versions)
          ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            trailing: const Icon(
              Icons.edit,
              size: 16,
            ),
            dense: true,
            title: Text(
              version.name,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            onTap: () {
              context.go('/admin/games/edit-version/${version.id}');
            }
          ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          title: Icon(
            Icons.add,
            size: Theme.of(context).textTheme.bodyLarge!.fontSize,
          ),
          onTap: () {
            context.go('/admin/games/new-version/${title.id}');
          },
        ),
      ],
    );
  }
}
