import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/providers.dart';

import 'controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

class AdminGamesEditVersionView extends ConsumerWidget {
  final int id;
  AdminGamesEditVersionView({super.key, required this.id});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(adminGamesEditVersionControllerProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Game Version'),
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
                TextFormField(
                  initialValue: value.item.title.name,
                  enabled: false,
                  decoration: const InputDecoration(
                    labelText: 'Game Title',
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
                        .read(adminGamesEditVersionControllerProvider(id)
                            .notifier)
                        .setItem(
                          value.item.copyWith(name: newVal),
                        );
                  },
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
                        .read(adminGamesEditVersionControllerProvider(id)
                            .notifier)
                        .setItem(
                          value.item.copyWith(name: newVal),
                        );
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  initialValue: value.item.info,
                  decoration: const InputDecoration(
                    labelText: 'Info',
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
                        .read(adminGamesEditVersionControllerProvider(id)
                            .notifier)
                        .setItem(
                          value.item.copyWith(info: newVal),
                        );
                  },
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
                    top: 16.0,
                  ),
                  child: FilledButton(
                    child: const Text('Edit'),
                    onPressed: () async {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }

                      final res = await ref
                          .read(gamesRepositoryProvider)
                          .updateGameTitleVersion(value.item);

                      if (context.mounted) {
                        if (res is DataSuccess) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully edited game version'),
                            ),
                          );
                          context.pop();
                        }

                        else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Failed to edit game version'),
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
