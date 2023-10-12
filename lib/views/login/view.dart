import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          children: [
            const SizedBox(height: 32),
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
                helperText: 'eee',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: password,
              decoration: const InputDecoration(
                labelText: 'Password',
                helperText: ' ',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 5.0),
                ),
              ),
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FilledButton(
                child: const Text('Login'),
                onPressed: () => context.pop(),
              ),
            ),
            TextButton(
              child: const Text('Register'),
              onPressed: () => context.go('/register'),
            ),
          ],
        ),
      ),
    );
  }
}
