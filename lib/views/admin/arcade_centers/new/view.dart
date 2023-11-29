import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_center.dart';
import 'package:agatra/providers.dart';
import 'package:agatra/views/admin/arcade_centers/home/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

class AdminArcadeCentersNewView extends ConsumerWidget {
  AdminArcadeCentersNewView({super.key});

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
            const SizedBox(height: 16.0),
            TextFormField(
              controller: info,
              minLines: 6,
              maxLines: 6,
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
                      .read(arcadeCentersRepositoryProvider)
                      .createArcadeCenter(
                        NewArcadeCenterEntity(
                          name: name.text,
                          info: info.text,
                        ),
                      );

                  if (context.mounted) {
                    if (res is DataSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Successfully added arcade center'),
                        ),
                      );
                      ref.invalidate(getArcadeCentersProvider);
                      context.pop();
                    } 

                    else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(res.error?.response?.data["message"] ??  'Failed to add arcade center'),
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
