import 'dart:async';

import 'package:agatra/views/maintainer/map_picker/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPicker extends ConsumerStatefulWidget {
  final double initZoom;
  static const defaultZoom = 14.4746;

  const MapPicker({
    Key? key,
    this.initZoom = defaultZoom,
  }) : super(key: key);

  @override
  ConsumerState<MapPicker> createState() => _MapPickerState();
}

class _MapPickerState extends ConsumerState<MapPicker> {
  final Completer<GoogleMapController> _controller = Completer();
  LatLng? value;

  @override
  Widget build(BuildContext context) {
    final mapPicker = ref.watch(mapPickerControllerProvider);

    return WillPopScope(
      onWillPop: () async {
        if (mapPicker.previouslyNull) {
          ref.read(mapPickerControllerProvider.notifier).setValue(null);
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pick the location'),
          actions: [
            IconButton(
              icon: const Icon(Icons.check),
              onPressed: () {
                ref
                    .read(mapPickerControllerProvider.notifier)
                    .setValue(value);
                context.pop();
              },
            ),
          ],
        ),
        body: Center(
          child: SizedBox(
            child: LayoutBuilder(
              builder: (context, constraints) {
                var maxWidth = constraints.biggest.width;
                var maxHeight = constraints.biggest.height;
    
                return Stack(
                  children: <Widget>[
                    SizedBox(
                      height: maxHeight,
                      width: maxWidth,
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: mapPicker.value ?? const LatLng(0, 0), // only for when the user quits without saving the map
                          zoom: widget.initZoom,
                        ),
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                        onCameraMove: (CameraPosition newPosition) {
                          value = newPosition.target; // No need for setState because it's not read by anyone in the UI
                        },
                        mapType: MapType.normal,
                        myLocationButtonEnabled: true,
                        myLocationEnabled: false,
                        zoomGesturesEnabled: true,
                        padding: const EdgeInsets.all(0),
                        buildingsEnabled: true,
                        cameraTargetBounds: CameraTargetBounds.unbounded,
                        compassEnabled: true,
                        indoorViewEnabled: false,
                        mapToolbarEnabled: true,
                        minMaxZoomPreference: MinMaxZoomPreference.unbounded,
                        rotateGesturesEnabled: true,
                        scrollGesturesEnabled: true,
                        tiltGesturesEnabled: true,
                        trafficEnabled: false,
                      ),
                    ),
                    Positioned(
                      bottom: maxHeight / 2,
                      right: (maxWidth - 30) / 2,
                      child: const Icon(
                        Icons.person_pin_circle,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
