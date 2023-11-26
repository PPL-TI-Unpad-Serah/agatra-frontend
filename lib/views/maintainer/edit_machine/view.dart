import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/providers.dart';
import 'package:agatra/views/maintainer/edit_machine/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

class MaintainerEditMachineView extends ConsumerWidget {
  final int id;
  MaintainerEditMachineView({super.key, required this.id});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(maintainerMachineEditControllerProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Arcade Machine'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Delete Arcade Machine?'),
                  content: const Text(
                    'Are you sure you want to delete this arcade machine?',
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
                      child: const Text('Delete'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: switch (form) {
        AsyncData(:final value) => Form(
            onWillPop: () async {
              bool shouldPop = true;

              if (form.value.item.hashCode != form.value.originalItemHash) {
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
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                TextFormField(
                  initialValue: value.item.game.title.name,
                  enabled: false,
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
                    onChanged: (GameTitleVersionEntity? newValue) {
                      if (newValue == null) {
                        return;
                      }
                      ref
                          .read(maintainerMachineEditControllerProvider(id)
                              .notifier)
                          .setItem(
                            value.item.copyWith(game: newValue),
                          );
                    },
                    menuMaxHeight: 256,
                    items: value.versions
                        .map<DropdownMenuItem<GameTitleVersionEntity>>(
                            (GameTitleVersionEntity value) {
                      return DropdownMenuItem<GameTitleVersionEntity>(
                        value: value,
                        child: Text(value.name),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16.0),
                TextFormField(
                  initialValue: value.item.machineCount.toString(),
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
                    ref
                        .read(maintainerMachineEditControllerProvider(id)
                            .notifier)
                        .setItem(
                          value.item.copyWith(machineCount: int.parse(newVal)),
                        );
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  initialValue: value.item.price.toString(),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    labelText: 'Price',
                    helperText: '',
                    border: OutlineInputBorder(),
                    prefixText: "Rp "
                  ),
                  validator: MultiValidator([
                    RequiredValidator(
                      errorText: 'Required',
                    ),
                  ]),
                  onChanged: (newVal) {
                    ref
                        .read(maintainerMachineEditControllerProvider(id)
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
                        .read(maintainerMachineEditControllerProvider(id)
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
                    child: const Text('Save'),
                    onPressed: () async {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }

                      final res = await ref
                          .read(arcadeLocationsRepositoryProvider)
                          .updateArcadeMachine(value.item);

                      if (context.mounted) {
                        if (res is DataSuccess) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Successfully edited arcade center'),
                            ),
                          );
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
      },
    );
  }
}
