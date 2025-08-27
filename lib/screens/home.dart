import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'title': 'Visitors', 'route': '/visitors'},
      {'title': 'Deliveries', 'route': '/deliveries'},
      {'title': 'Approvals', 'route': '/approvals'},
      {'title': 'Announcements', 'route': '/announcements'},
      {'title': 'Payments', 'route': '/payments'},
      {'title': 'Bookings', 'route': '/bookings'},
      {'title': 'Settings', 'route': '/settings'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: items.map((item) {
          return Card(
            child: ListTile(
              title: Text(item['title']!),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Navigator.pushNamed(context, item['route']!),
            ),
          );
        }).toList(),
      ),
    );
  }
}