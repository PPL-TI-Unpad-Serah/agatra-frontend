part of 'view.dart';

class _WeatherCard extends ConsumerWidget {
  const _WeatherCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: Align(
                child: Icon(
                  Icons.cloud,
                  size: 64,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Jakarta, Indonesia",
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    "Mendung",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4.0),
                  const Text("18°C"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
