part of 'view.dart';

class _ArcadeCentersList extends ConsumerWidget {
  const _ArcadeCentersList({Key? key})
      : super(key: key); // TODO refresh pull + refresh on add/save

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listValue = ref.watch(getArcadeCentersProvider);

    return switch (listValue) {
      AsyncData(:final value) => RefreshIndicator(
          onRefresh: () async {
            return await ref.refresh(getArcadeCentersProvider);
          },
          child: ListView.builder(
            itemCount: value.length,
            itemBuilder: (BuildContext context, int index) {
              return ArcadeCenterItem(item: value[index]);
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

class ArcadeCenterItem extends StatelessWidget {
  final ArcadeCenterEntity item;
  const ArcadeCenterItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: IconButton(
        onPressed: () {
          context.go('/admin/arcade-centers/edit/${item.id}');
        },
        icon: const Icon(Icons.edit),
      ),
      title: Text(item.name),
    );
  }
}
