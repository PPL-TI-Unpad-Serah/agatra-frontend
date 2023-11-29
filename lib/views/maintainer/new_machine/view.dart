import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/providers.dart';
import 'package:agatra/views/arcades/details/providers.dart';
import 'package:agatra/views/arcades/home/search_query_provider.dart';
import 'package:agatra/views/maintainer/new_machine/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

class MaintainerNewMachineView extends ConsumerWidget {
  final int arcadeLocationId;
  MaintainerNewMachineView({super.key, required this.arcadeLocationId});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(maintainerNewMachineControllerProvider(arcadeLocationId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Arcade Machine'),
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
                DropdownButtonFormField<GameTitleCompactEntity>(
                  value: value.selectedTitle,
                  items: value.titles
                      .map<DropdownMenuItem<GameTitleCompactEntity>>(
                          (GameTitleCompactEntity value) {
                    return DropdownMenuItem<GameTitleCompactEntity>(
                      value: value,
                      child: Text(value.name),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value == null) {
                      return;
                    }
                    ref
                        .read(maintainerNewMachineControllerProvider(arcadeLocationId).notifier)
                        .setSelectedTitle(value);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Game Title',
                    helperText: '',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                DropdownButtonFormField<GameTitleVersionEntity>(
                    value: value.item.game,
                    decoration: const InputDecoration(
                      labelText: 'Version',
                      helperText: '',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value.versions == null) || value.loadingSelectedTitle
                        ? null
                        : (GameTitleVersionEntity? newValue) {
                            if (newValue == null) {
                              return;
                            }
                            ref
                                .read(maintainerNewMachineControllerProvider(arcadeLocationId)
                                    .notifier)
                                .setItem(
                                  value.item.copyWith(game: newValue),
                                );
                          },
                    menuMaxHeight: 256,
                    items: (value.versions == null) || value.loadingSelectedTitle
                        ? []
                        : value.versions!
                            .map<DropdownMenuItem<GameTitleVersionEntity>>(
                                (GameTitleVersionEntity value) {
                            return DropdownMenuItem<GameTitleVersionEntity>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList()),
                const SizedBox(height: 16.0),
                TextFormField(
                  initialValue: value.item.machineCount?.toString(),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    labelText: 'Machine Count',
                    helperText: '',
                    border: OutlineInputBorder(),
                  ),
                  validator: MultiValidator([
                    RequiredValidator(
                      errorText: 'Required',
                    ),
                  ]),
                  onChanged: (newVal) {
                    if (newVal.isEmpty) {
                      newVal = "0";
                    }

                    ref
                        .read(maintainerNewMachineControllerProvider(arcadeLocationId)
                            .notifier)
                        .setItem(
                          value.item.copyWith(machineCount: int.parse(newVal)),
                        );
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  initialValue: value.item.price?.toString(),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                      labelText: 'Price',
                      helperText: '',
                      border: OutlineInputBorder(),
                      prefixText: "Rp "),
                  validator: MultiValidator([
                    RequiredValidator(
                      errorText: 'Required',
                    ),
                  ]),
                  onChanged: (newVal) {
                    if (newVal.isEmpty) {
                      newVal = "0";
                    }

                    ref
                        .read(maintainerNewMachineControllerProvider(arcadeLocationId)
                            .notifier)
                        .setItem(
                          value.item.copyWith(price: int.parse(newVal)),
                        );
                  },
                ),
                TextFormField(
                  minLines: 6,
                  maxLines: 6,
                  decoration: const InputDecoration(
                    labelText: 'Notes',
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
                        .read(maintainerNewMachineControllerProvider(arcadeLocationId)
                            .notifier)
                        .setItem(
                          value.item.copyWith(notes: newVal),
                        );
                  },
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
                    top: 16.0,
                  ),
                  child: FilledButton(
                    child: const Text('Create'),
                    onPressed: () async {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }

                      final res = await ref
                          .read(arcadeLocationsRepositoryProvider)
                          .createArcadeMachine(value.item);

                      if (context.mounted) {
                        if (res is DataSuccess) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Successfully created new machine'),
                            ),
                          );
                          ref.invalidate(getArcadeLocationProvider);
                          ref.invalidate(searchQueryStateProvider);
                          context.pop();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Failed to create new machine'),
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
      },
    );
  }
}
