import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/visitor_list_screen.dart';
import 'screens/visitor_entry_screen.dart';

void main() {
  runApp(MyVisitorApp());
}

class MyVisitorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyVisitor',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
      routes: {
        '/visitorEntry': (context) => VisitorEntryScreen(),
        '/visitorList': (context) => VisitorListScreen(),
      },
    );
  }
}