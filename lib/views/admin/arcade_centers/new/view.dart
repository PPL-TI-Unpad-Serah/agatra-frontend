import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

class AdminArcadeCentersNewView extends ConsumerWidget {
  AdminArcadeCentersNewView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();

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

                  context.pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
