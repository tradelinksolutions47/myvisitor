import 'package:flutter/material.dart';
import '../models/visitor.dart';

class VisitorEntryScreen extends StatefulWidget {
  @override
  _VisitorEntryScreenState createState() => _VisitorEntryScreenState();
}

class _VisitorEntryScreenState extends State<VisitorEntryScreen> {
  final _nameController = TextEditingController();
  final _purposeController = TextEditingController();
  List<Visitor> visitors = [];

  void _addVisitor() {
    if (_nameController.text.isEmpty || _purposeController.text.isEmpty) return;
    setState(() {
      visitors.add(Visitor(
        name: _nameController.text,
        purpose: _purposeController.text,
        visitTime: DateTime.now(),
      ));
    });
    _nameController.clear();
    _purposeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Visitor')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Visitor Name')),
            TextField(controller: _purposeController, decoration: InputDecoration(labelText: 'Purpose')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _addVisitor, child: Text('Add Visitor')),
          ],
        ),
      ),
    );
  }
}