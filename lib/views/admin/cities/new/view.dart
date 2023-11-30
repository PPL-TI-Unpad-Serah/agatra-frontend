import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/providers.dart';
import 'controller.dart';
import 'package:agatra/views/admin/cities/home/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

class AdminNewCityView extends ConsumerWidget {
  AdminNewCityView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(adminNewCitiesControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create city'),
      ),
      body: switch (form) {
        AsyncData(:final value) => Form(
            key: _formKey,
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
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
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
                        .read(adminNewCitiesControllerProvider
                            .notifier)
                        .setItem(
                          value.item.copyWith(name: newVal),
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
                          .read(citiesRepositoryProvider)
                          .createCity(value.item);

                      if (context.mounted) {
                        if (res is DataSuccess) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully created city'),
                            ),
                          );
                          ref.invalidate(getCitiesProvider);
                          context.pop();
                        }

                        else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(res.error?.response?.data["message"] ??  'Failed to create city'),
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
