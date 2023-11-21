part of 'view.dart';

class _ArcadeLocationContent extends ConsumerWidget {
  final ArcadeLocationEntity location;
  const _ArcadeLocationContent({super.key, required this.location});

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
          if (session != null && session.user.role != UserRole.user) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.push('/maintainer/edit-location/5');
                  },
                  child: const Icon(Icons.edit),
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
          Text(
            'Games',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8.0),
          for (final machine in location.machines) ...[
            _MachineCard(machine: machine),
            const SizedBox(height: 4.0),
          ],
          // Card(
          //   elevation: 1,
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'maimai FiNALE',
          //           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          //                 color: Theme.of(context).colorScheme.secondary,
          //               ),
          //         ),
          //         const SizedBox(height: 4.0),
          //         const Padding(
          //           padding: EdgeInsets.only(left: 16.0),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Rp10000/Credit',
          //               ),
          //               Text(
          //                 'Note: 1 Credit = 4 Songs',
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // const SizedBox(height: 4.0),
          // Card(
          //   elevation: 1,
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Wrap(
          //           crossAxisAlignment: WrapCrossAlignment.center,
          //           children: [
          //             Text(
          //               'SOUND VOLTEX EXCEED GEAR',
          //               style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          //                     color: Theme.of(context).colorScheme.secondary,
          //                   ),
          //             ),
          //             const SizedBox(width: 4.0),
          //             const Text("x2"),
          //             GestureDetector(
          //               onTap: () {
          //                 showDialog(
          //                   context: context,
          //                   builder: (context) => const AlertDialog(
          //                     insetPadding: EdgeInsets.all(16),
          //                     content: Text(
          //                       "LIGHT START: 5 Credit\n"
          //                       "STANDARD START: 6 Credits\n"
          //                       "AUTOMATION START: 7 Credits\n"
          //                       "BLASTER START: 10 Credits",
          //                     ),
          //                   ),
          //                 );
          //               },
          //               child: const Padding(
          //                 padding: EdgeInsets.symmetric(horizontal: 5.0),
          //                 child: Icon(Icons.info_outline, size: 16),
          //               ),
          //             ),
          //           ],
          //         ),
          //         const SizedBox(height: 4.0),
          //         const Padding(
          //           padding: EdgeInsets.only(left: 16.0),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Rp1900 / Credit',
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // const SizedBox(height: 4.0),
          // Card(
          //   elevation: 1,
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Pump It Up Phoenix',
          //           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          //                 color: Theme.of(context).colorScheme.secondary,
          //               ),
          //         ),
          //         const SizedBox(height: 4.0),
          //         const Padding(
          //           padding: EdgeInsets.only(left: 16.0),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Rp10000/Credit',
          //               ),
          //               Text(
          //                 'Note: 1 Credit = 4 Songs',
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // const SizedBox(height: 4.0),
          // Card(
          //   elevation: 1,
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Danz Base',
          //           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          //                 color: Theme.of(context).colorScheme.secondary,
          //               ),
          //         ),
          //         const SizedBox(height: 4.0),
          //         const Padding(
          //           padding: EdgeInsets.only(left: 16.0),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Rp10000/Credit',
          //               ),
          //               Text(
          //                 'Note: 1 Credit = 4 Songs',
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // const SizedBox(height: 4.0),
          // Card(
          //   elevation: 1,
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Wrap(
          //           crossAxisAlignment: WrapCrossAlignment.center,
          //           children: [
          //             Text(
          //               'Wangan Midnight Maximum Tune 6RR',
          //               style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          //                     color: Theme.of(context).colorScheme.secondary,
          //                   ),
          //             ),
          //             const SizedBox(width: 4.0),
          //             const Text("x4"),
          //           ],
          //         ),
          //         const SizedBox(height: 4.0),
          //         const Padding(
          //           padding: EdgeInsets.only(left: 16.0),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Rp10000/Credit',
          //               ),
          //               Text(
          //                 'Note: 1 Credit = 4 Songs',
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      );
  }
}