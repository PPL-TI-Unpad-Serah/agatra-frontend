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
                      const SizedBox(
                        width: 4.0,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 25),
                        child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('${machine.game.title.name} ${machine.game.name}'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      machine.game.info,
                                    )
                                  ]
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      context.pop();
                                    },
                                    child: const Text('Close'),
                                  ),
                                ],
                              ),
                            );
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(Icons.info_outline),
                        ),
                      ),
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
                        const SizedBox(height: 8.0),
                        const Text(
                          'Notes:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2.0),
                        Text(machine.notes),
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
