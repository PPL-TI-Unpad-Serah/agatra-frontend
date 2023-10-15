import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    ]),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      helperText: '',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                    ),
                    obscureText: true,
                    validator: MultiValidator([
                      RequiredValidator(
                        errorText: 'Required',
                      ),
                    ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
                      top: 16.0,
                    ),
                    child: FilledButton(
                      child: const Text('Login'),
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        context.pop();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextButton(
                      child: const Text('Register'),
                      onPressed: () => context.go('/register'),
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