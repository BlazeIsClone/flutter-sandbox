import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  final String userName;

  const DashboardView({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> events = [
      {'title': 'Person XR', 'email': 'person@test.com'},
      {'title': 'Person RFS', 'email': 'person@test.com'},
      {'title': 'PERSON X24', 'email': 'person@test.com'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome, $userName!',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 16),
                const Text(
                  'All Users',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(events[index]['title']!),
                      subtitle: Text('${events[index]['email']}'),
                      leading: const Icon(Icons.person),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
