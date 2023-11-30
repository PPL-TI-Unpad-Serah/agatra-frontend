part of 'view.dart';

class _ArcadeCentersList extends ConsumerWidget {
  const _ArcadeCentersList({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listValue = ref.watch(getCitiesProvider);

    return switch (listValue) {
      AsyncData(:final value) => RefreshIndicator(
          onRefresh: () async {
            return await ref.refresh(getCitiesProvider);
          },
          child: ListView.builder(
            itemCount: value.length,
            itemBuilder: (BuildContext context, int index) {
              return CityItem(item: value[index]);
            },
          ),
        ),
      AsyncError(:final error) => Text(
          error.toString(),
        ),
      _ => const Center(
          child: CircularProgressIndicator(),
        ),
    };
  }
}

class CityItem extends StatelessWidget {
  final CityEntity item;
  const CityItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: IconButton(
        onPressed: () {
          context.go('/admin/cities/edit/${item.id}');
        },
        icon: const Icon(Icons.edit),
      ),
      title: Text(item.name),
    );
  }
}
