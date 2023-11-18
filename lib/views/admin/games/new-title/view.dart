import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

class AdminGamesNewTitleView extends ConsumerWidget {
  AdminGamesNewTitleView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final name = TextEditingController();
  final info = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Arcade Center'),
      ),
      body: Form(
        key: _formKey,
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

                  // final res = await ref
                  //     .read(arcadeCentersRepositoryProvider)
                  //     .createArcadeCenter(
                  //       NewArcadeCenterEntity(
                  //         name: name.text,
                  //         info: info.text,
                  //       ),
                  //     );

                  if (context.mounted) {
                    // if (res is DataSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Successfully added arcade center'),
                        ),
                      );
                      context.pop();
                    // } 

                    // else {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(
                    //       content: Text('Failed to add arcade center'),
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
    );
  }
}