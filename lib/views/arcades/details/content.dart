part of 'view.dart';

class _ArcadeLocationContent extends ConsumerWidget {
  final ArcadeLocationEntity location;
  const _ArcadeLocationContent({required this.location});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionManagerProvider).asData?.value;

    return ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          Text(
            '${location.gameCenter.name} ${location.name}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16.0),
          if (session != null && session.user.role != UserRole.member) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FilledButton.icon(
                  onPressed: () {
                    context.push('/maintainer/edit-location/${location.id}');
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Location'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
          ],
          SizedBox(
            height: 250,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(location.latitude, location.longitude),
                  zoom: 14,
                ),
                markers: {
                  Marker(
                    markerId: MarkerId('${location.gameCenter.name} ${location.name}'),
                    position: LatLng(location.latitude, location.longitude),
                  ),
                },
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            location.description
          ),
          const SizedBox(height: 16.0),
          Text(
            'About ${location.gameCenter.name}:',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 4.0),
          Text(
            location.gameCenter.info,
          ),
          const SizedBox(height: 16.0),
          const Divider(
            indent: 12,
            endIndent: 12,
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Games',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              if (session != null && session.user.role != UserRole.member) ...[
                const Spacer(),
                SizedBox(
                  height: 30,
                  child: FilledButton(
                    onPressed: () {
                      context.push('/maintainer/new-machine/${location.id}');
                    },
                    child: const Icon(Icons.add)
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 8.0),
          for (final machine in location.machines) ...[
            _MachineCard(machine: machine),
            const SizedBox(height: 4.0),
          ],
        ],
      );
  }
}
