import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/form/new_game_title_version.dart';
import 'package:agatra/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

class AdminGamesNewVersionView extends ConsumerWidget {
  AdminGamesNewVersionView({super.key, required this.gameTitleId});

  final int gameTitleId;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final name = TextEditingController();
  final priceInfo = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Game Version'),
      ),
      body: Form(
        key: _formKey,
        onWillPop: () async {
          bool shouldPop = true;

          if (name.text.isNotEmpty) {
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
              controller: name,
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
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: priceInfo,
              minLines: 6,
              maxLines: 6,
              decoration: const InputDecoration(
                labelText: 'Price Information',
                helperText: '',
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
                top: 16.0,
              ),
              child: FilledButton(
                child: const Text('Create'),
                onPressed: () async {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }

                  final res = await ref
                      .read(gamesRepositoryProvider)
                      .createGameTitleVersion(
                        NewGameTitleVersionEntity(
                          name: name.text,
                          priceInfo: priceInfo.text,
                          gameTitleId: gameTitleId,
                        ),
                      );

                  if (context.mounted) {
                    if (res is DataSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Successfully added a game version'),
                        ),
                      );
                      context.pop();
                    } 

                    else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Failed to add a game version'),
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
    );
  }
}