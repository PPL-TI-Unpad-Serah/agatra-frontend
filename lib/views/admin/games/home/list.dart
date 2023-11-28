part of 'view.dart';

class _GamesList extends ConsumerWidget { // TODO refresh pull + refresh on add/save
  const _GamesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listValue = ref.watch(getGameTitlesProvider);

    return switch (listValue) {
      AsyncData(:final value) => ListView.builder(
          itemCount: value.length,
          itemBuilder: (BuildContext context, int index) {
            return _GameEntry(title: value[index]);
          },
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