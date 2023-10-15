import 'package:agatra/components/user_role_chip.dart';
import 'package:flutter/material.dart';

class AdminUsersDetailsView extends StatelessWidget {
  const AdminUsersDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: 
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                  content: Text("User not updated",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                  ),
                  duration: const Duration(seconds: 2),
                ),
              );
              Navigator.pop(context);
            },
          ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                  content: Text("User updated!",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                  ),
                  duration: const Duration(seconds: 2),
                ),
              );
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  "Rommel",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(width: 8.0),
                Transform(
                  transform: Transform.scale(
                    scale: Theme.of(context).textTheme.bodyLarge!.fontSize! /
                        Theme.of(context).textTheme.bodyMedium!.fontSize!,
                  ).transform,
                  child: UserRoleChip(
                    name: "ADMIN",
                    containerColor: Theme.of(context).colorScheme.onError,
                    textColor: Theme.of(context).colorScheme.onErrorContainer,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Email",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const Text("testemail@email.com"),
              ],
            ),
            const SizedBox(height: 24.0),
            DropdownButtonFormField(
              decoration: const InputDecoration(
                labelText: "Role",
                border: OutlineInputBorder(),
              ),
              value: "admin",
              onChanged: (value) {},
              items: [
                DropdownMenuItem(
                  value: "admin",
                  child: UserRoleChip(
                    name: "ADMIN",
                    containerColor: Theme.of(context).colorScheme.onError,
                    textColor: Theme.of(context).colorScheme.onErrorContainer,
                  ),
                ),
                const DropdownMenuItem(
                  value: "maintainer",
                  child: UserRoleChip(
                    name: "MAINTAINER",
                    containerColor: Color(0xff00390a),
                    textColor: Color(0xffb6f2af),
                  ),
                ),
                const DropdownMenuItem(
                  value: "user",
                  child: Text("-"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
