import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/providers.dart';
import 'package:agatra/views/admin/users/home/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'controller.dart';

class AdminUsersDetailsView extends ConsumerWidget {
  final int id;
  AdminUsersDetailsView({Key? key, required this.id}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(adminUsersEditControllerProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit User'),
      ),
      body: switch (form) {
        AsyncData(:final value) => Form(
            key: _formKey,
            onWillPop: () async {
              bool shouldPop = true;

              if (value.item != value.originalItem) {
                shouldPop = false;
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
                _SearchUserItem(
                  user: value.originalItem,
                ),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Email",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(value.item.email),
                  ],
                ),
                const SizedBox(height: 24.0),
                DropdownButtonFormField<UserRole>(
                  decoration: const InputDecoration(
                    labelText: "Role",
                    border: OutlineInputBorder(),
                  ),
                  value: value.item.role,
                  onChanged: (newRole) {
                    if (newRole == null) {
                      return;
                    }

                    ref
                        .read(adminUsersEditControllerProvider(id).notifier)
                        .setItem(
                          value.item.copyWith(
                            role: newRole,
                          ),
                        );
                  },
                  items: UserRole.values.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: e.chip ?? Text("  ${e.name}", style: const TextStyle(fontSize: 12),),
                    );
                  }).toList(),
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
                          .read(userManagementRepositoryProvider)
                          .updateUser(value.item);

                      if (context.mounted) {
                        if (res is DataSuccess) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully edited user'),
                            ),
                          );
                          ref.invalidate(getPrivilegedUsersProvider);
                          context.pop();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  res.error?.response?.data["message"] ??
                                      'Failed to edit user'),
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

class _SearchUserItem extends StatelessWidget {
  final UserEntity user;
  const _SearchUserItem({required this.user});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Text(user.username),
          const SizedBox(width: 8.0),
          Transform(
            transform: Transform.scale(
              scale: Theme.of(context).textTheme.bodyLarge!.fontSize! /
                  Theme.of(context).textTheme.bodyMedium!.fontSize!,
            ).transform,
            child: user.role.chipWidget,
          ),
        ],
    );
  }
}
