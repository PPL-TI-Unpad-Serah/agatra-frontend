part of 'view.dart';

class _MachineCard extends ConsumerWidget {
  const _MachineCard({super.key, required this.machine});

  final ArcadeMachineEntity machine;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionManagerProvider).asData?.value;

    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
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
          ),
        ),
        if (session != null && session.user.role != UserRole.user) ...[
          Positioned(
            right: 4,
            bottom: 4,
            child: IconButton.filledTonal(
              constraints: const BoxConstraints(maxHeight: 36),
              onPressed: () {
                context.push('/maintainer/edit-machine/${machine.id}');
              },
              icon: const Icon(Icons.edit, size: 12.0),
            ),
          ),
        ],
      ],
    );
  }
}
