part of 'view.dart';

class _MachineCard extends StatelessWidget {
  const _MachineCard({super.key, required this.machine});

  final ArcadeMachineEntity machine;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  '${machine.game.title.name} ${machine.game.name} ',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                if (machine.machineCount > 1) ...[
                  const SizedBox(width: 4.0),
                  Text('x${machine.machineCount}')
                ],
              ],
            ),
            const SizedBox(height: 4.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rp${machine.price}/Credit',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
