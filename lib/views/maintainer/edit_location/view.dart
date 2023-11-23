import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/providers.dart';
import 'package:agatra/views/maintainer/edit_location/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

class MaintainerEditLocationView extends ConsumerWidget {
  final int id;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  MaintainerEditLocationView({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(maintainerLocationEditControllerProvider(id));

    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Arcade Location'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (form.value!.item.hashCode != form.value!.originalItemHash) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Discard changes?'),
                    content: const Text(
                      'You have unsaved changes. Are you sure you want to discard them?',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          context.pop();
                          context.pop();
                        },
                        child: const Text('Discard'),
                      ),
                    ],
                  ),
                );
                return;
              }
              context.pop();
            },
          ),
        ),
        body: switch (form) {
          AsyncData(:final value) => Form(
              key: _formKey,
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

                        // final res = await ref
                        //     .read(arcadeCentersRepositoryProvider)
                        //     .updateArcadeCenter(value.item);

                        if (context.mounted) {
                          // if (res is DataSuccess) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Successfully edited arcade center'),
                            ),
                          );
                          context.pop();
                          // }

                          // else {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(
                          //       content: Text('Failed to edit arcade center'),
                          //     ),
                          //   );
                          // }
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