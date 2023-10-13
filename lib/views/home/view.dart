import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
              child: const Text('Agatra'),
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.pop(context);
                context.go('/login');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat pagi,",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "Guest!",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          SizedBox(
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Align(
                        child: Icon(
                          Icons.cloud,
                          size: 64,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Jakarta, Indonesia",
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            "Mendung",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 4.0),
                          const Text("18°C"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              const Text(
                "Mau main di mana hari ini?",
              ),
              const SizedBox(height: 8.0),
              FilledButton.icon(
                onPressed: () {
                  context.go('/arcades');
                },
                icon: const Icon(Icons.search),
                label: const Text("Cari permainan"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
