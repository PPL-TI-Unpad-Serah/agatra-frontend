part of 'view.dart';

class _MachineCard extends ConsumerWidget {
  const _MachineCard({required this.machine});

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
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '${machine.game.title.name} ${machine.game.name} ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                        if (machine.machineCount > 1) ...[
                          const WidgetSpan(
                            child: SizedBox(width: 4.0),
                          ),
                          TextSpan(
                            text: 'x${machine.machineCount}',
                          )
                        ],
                        const WidgetSpan(
                            child: SizedBox(width: 4.0),
                          ),
                        WidgetSpan(
                            child: SizedBox(
                              width: 18.0,
                              height: 18.0,
                              child: IconButton(
                                iconSize: 16.0,
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text(
                                          '${machine.game.title.name} ${machine.game.name}'),
                                      content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              machine.game.info,
                                            )
                                          ]),
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
                          ),
                      ],
                    ),
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
