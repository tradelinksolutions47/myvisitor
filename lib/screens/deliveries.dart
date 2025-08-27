import 'package:flutter/material.dart';

class DeliveriesScreen extends StatelessWidget {
  const DeliveriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Deliveries')),
      body: Center(child: Text('Delivery visitors screen.')),
    );
  }
}