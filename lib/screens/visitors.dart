import 'package:flutter/material.dart';

class VisitorsScreen extends StatelessWidget {
  const VisitorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Visitors')),
      body: const Center(child: Text('List of visitors with approval toggle here.')),
    );
  }
}