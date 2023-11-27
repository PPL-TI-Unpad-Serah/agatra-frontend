import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/form/auth_register.dart';
import 'package:agatra/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterView extends ConsumerWidget {
  RegisterView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 48.0),
                children: [
                  const SizedBox(height: 64.0),
                  Text(
                    'Agatra',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(height: 64),
                  TextFormField(
                    controller: username,
                    decoration: const InputDecoration(
                      labelText: 'Username',
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
                    controller: email,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      helperText: '',
                      border: OutlineInputBorder(),
                    ),
                    validator: MultiValidator([
                      RequiredValidator(
                        errorText: 'Required',
                      ),
                      EmailValidator(
                        errorText: 'Not a valid email',
                      )
                    ]),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      helperText: '',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                    validator: MultiValidator([
                      RequiredValidator(
                        errorText: 'Required',
                      ),
                      MinLengthValidator(
                        8,
                        errorText: 'Length should be greater than 8',
                      ),
                    ]),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: confirmPassword,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      helperText: '',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                    validator: MultiValidator([
                      RequiredValidator(
                        errorText: 'Required',
                      ),
                      MinLengthValidator(
                        8,
                        errorText: 'Length should be greater than 8',
                      ),
                    ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
                      top: 16.0,
                    ),
                    child: FilledButton(
                      child: const Text('Register'),
                      onPressed: () async {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }

                        final res =
                            await ref.read(authRepositoryProvider).register(
                                  AuthRegister(
                                    username: username.text,
                                    email: email.text,
                                    password: password.text,
                                    confirmPassword: confirmPassword.text,
                                  ),
                                );

                        if (context.mounted) {
                          if (res is DataFailure) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(res.error?.response?.data["message"] ??  "Register Failed!"),
                              ),
                            );
                            return;
                          }

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Register succeed! Please login"),
                            ),
                          );
                          context.pop();
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextButton(
                      child: const Text('Login'),
                      onPressed: () => context.go('/login'),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 4.0,
              left: 4.0,
              child: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back),
              ),
            )
          ],
        ),
      ),
    );
  }
}
