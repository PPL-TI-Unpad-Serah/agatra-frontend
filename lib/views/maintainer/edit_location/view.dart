import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/providers.dart';
import 'package:agatra/views/arcades/details/providers.dart';
import 'package:agatra/views/arcades/home/search_query_provider.dart';
import 'package:agatra/views/maintainer/edit_location/controller.dart';
import 'package:agatra/views/maintainer/map_picker/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:agatra/helpers/format_decimal.dart';

class MaintainerEditLocationView extends ConsumerWidget {
  final int id;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  MaintainerEditLocationView({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(maintainerLocationEditControllerProvider(id));
    final mapPickerController = ref.watch(mapPickerControllerProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Arcade Location'),
        ),
        body: switch (form) {
          AsyncData(:final value) => Form(
              key: _formKey,
              onWillPop: () async {
                bool shouldPop = true;

                if (value.item.hashCode != value.originalItemHash) {
                    await showDialog<bool>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Discard changes?'),
                        content: const Text(
                          'You have unsaved changes. Are you sure you want to discard them?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              shouldPop = false;
                              context.pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              shouldPop = true;
                              context.pop();
                            },
                            child: const Text('Discard'),
                          ),
                        ],
                      ),
                    );
                  }

                return shouldPop;
              },
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  DropdownButtonFormField<ArcadeCenterEntity>(
                    value: value.item.gameCenter,
                    decoration: const InputDecoration(
                      labelText: 'Arcade Center',
                      helperText: '',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (ArcadeCenterEntity? newValue) {
                      if (newValue == null) {
                        return;
                      }
                      ref
                          .read(maintainerLocationEditControllerProvider(id)
                              .notifier)
                          .setItem(
                            value.item.copyWith(gameCenter: newValue),
                          );
                    },
                    menuMaxHeight: 256,
                    items: value.arcadeCenters
                        .map<DropdownMenuItem<ArcadeCenterEntity>>(
                            (ArcadeCenterEntity value) {
                      return DropdownMenuItem<ArcadeCenterEntity>(
                        value: value,
                        child: Text(value.name),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    initialValue: value.item.name,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      helperText: '',
                      border: OutlineInputBorder(),
                    ),
                    validator: MultiValidator([
                      RequiredValidator(
                        errorText: 'Required',
                      ),
                    ]),
                    onChanged: (newVal) {
                      ref
                          .read(maintainerLocationEditControllerProvider(id)
                              .notifier)
                          .setItem(
                            value.item.copyWith(name: newVal),
                          );
                    },
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: TextFormField(
                          initialValue: "${formatDecimal(
                            form.value.item.latitude,
                            decimals: 5,
                          )}, ${formatDecimal(
                            form.value.item.longitude,
                            decimals: 5,
                          )}",
                          enabled: false,
                          decoration: const InputDecoration(
                            labelText: 'Position',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      IconButton.filledTonal(
                        onPressed: () async {
                          if (mapPickerController.value == null) {
                            ref
                                .read(mapPickerControllerProvider.notifier)
                                .setValue(
                                    LatLng(form.value.item.latitude,
                                        form.value.item.longitude),
                                    previouslyNull: false);
                          }

                          if (context.mounted) {
                            context.push('/map-picker');
                          }
                        },
                        icon: const Icon(Icons.map),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32.0),
                  DropdownButtonFormField<CityEntity>(
                    value: value.item.city,
                    decoration: const InputDecoration(
                      labelText: 'City',
                      helperText: '',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (CityEntity? newValue) {
                      ref
                          .read(maintainerLocationEditControllerProvider(id)
                              .notifier)
                          .setItem(
                            value.item.copyWith(city: newValue!),
                          );
                    },
                    menuMaxHeight: 256,
                    items: value.cities
                        .map<DropdownMenuItem<CityEntity>>((CityEntity value) {
                      return DropdownMenuItem<CityEntity>(
                        value: value,
                        child: Text(value.name),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    initialValue: value.item.description,
                    minLines: 6,
                    maxLines: 6,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                      helperText: '',
                      border: OutlineInputBorder(),
                    ),
                    validator: MultiValidator([
                      RequiredValidator(
                        errorText: 'Required',
                      ),
                    ]),
                    onChanged: (newVal) {
                      ref
                          .read(maintainerLocationEditControllerProvider(id)
                              .notifier)
                          .setItem(
                            value.item.copyWith(description: newVal),
                          );
                    },
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
                      top: 16.0,
                    ),
                    child: FilledButton(
                      child: const Text('Save'),
                      onPressed: () async {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }

                        final res = await ref
                            .read(arcadeLocationsRepositoryProvider)
                            .updateArcadeLocation(value.item);

                        if (context.mounted) {
                          if (res is DataSuccess) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Successfully edited arcade center'),
                              ),
                            );
                            ref.invalidate(getArcadeLocationProvider);
                            ref.invalidate(searchQueryStateProvider);
                            context.pop();
                          }

                          else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Failed to edit arcade center'),
                              ),
                            );
                          }
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          AsyncError(:final error) => Text(
              error.toString(),
            ),
          _ => const Center(
              child: CircularProgressIndicator(),
            ),
        });
  }
}
