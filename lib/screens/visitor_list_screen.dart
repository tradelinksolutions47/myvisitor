import 'package:flutter/material.dart';
import 'visitor_entry_screen.dart';
import '../models/visitor.dart';

class VisitorListScreen extends StatefulWidget {
  @override
  _VisitorListScreenState createState() => _VisitorListScreenState();
}

class _VisitorListScreenState extends State<VisitorListScreen> {
  List<Visitor> visitors = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Visitor List')),
      body: visitors.isEmpty
          ? Center(child: Text('No visitors yet'))
          : ListView.builder(
              itemCount: visitors.length,
              itemBuilder: (context, index) {
                final visitor = visitors[index];
                return ListTile(
                  title: Text(visitor.name),
                  subtitle: Text('\${visitor.purpose} at \${visitor.visitTime}'),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => VisitorEntryScreen()),
          );
          if (result != null && result is Visitor) {
            setState(() {
              visitors.add(result);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}