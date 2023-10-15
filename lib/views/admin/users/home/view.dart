import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:agatra/components/user_role_chip.dart';

class AdminUsersHomeView extends StatelessWidget {
  const AdminUsersHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
        title: SearchAnchor.bar(
          barHintText: 'Search all users',
          constraints: const BoxConstraints(minHeight: 40.0),
          suggestionsBuilder: (context, controller) {
            return [
              ListTile(
                title: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text("Rommel"),
                    const SizedBox(width: 8.0),
                    UserRoleChip(
                      name: "ADMIN",
                      containerColor: Theme.of(context).colorScheme.onError,
                      textColor: Theme.of(context).colorScheme.onErrorContainer,
                    )
                  ],
                ),
                onTap: () {
                  controller.closeView(null);
                  context.go('/admin/users/1');
                },
              ),
              ListTile(
                title: const Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text("User 1"),
                    SizedBox(width: 8.0),
                  ],
                ),
                onTap: () {
                  controller.closeView(null);
                  context.go('/admin/users/1');
                },
              ),
              ListTile(
                title: const Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text("Osmond"),
                    SizedBox(width: 8.0),
                    UserRoleChip(
                      name: "MAINTAINER",
                      containerColor: Color(0xff00390a),
                      textColor: Color(0xffb6f2af),
                    )
                  ],
                ),
                onTap: () {
                  controller.closeView(null);
                  context.go('/admin/users/1');
                },
              ),
            ];
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
            child: Text(
              "Admins and Maintainers",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            color: Theme.of(context).colorScheme.surfaceVariant,
            elevation: 0,
            child: InkWell(
              onTap: () {
                context.go('/admin/users/1');
              },
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text("Rommel"),
                    const SizedBox(width: 8.0),
                    UserRoleChip(
                      name: "ADMIN",
                      containerColor: Theme.of(context).colorScheme.onError,
                      textColor: Theme.of(context).colorScheme.onErrorContainer,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          Card(
            clipBehavior: Clip.hardEdge,
            color: Theme.of(context).colorScheme.surfaceVariant,
            elevation: 0,
            child: InkWell(
              onTap: () {
                context.go('/admin/users/1');
              },
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: const Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text("Osmond"),
                    SizedBox(width: 8.0),
                    UserRoleChip(
                      name: "MAINTAINER",
                      containerColor: Color(0xff00390a),
                      textColor: Color(0xffb6f2af),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
