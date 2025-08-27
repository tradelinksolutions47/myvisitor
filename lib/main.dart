import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/home.dart';
import 'screens/visitors.dart';
import 'screens/deliveries.dart';
import 'screens/approvals.dart';
import 'screens/announcements.dart';
import 'screens/payments.dart';
import 'screens/bookings.dart';
import 'screens/settings.dart';

void main() {
  runApp(const MyVisitorApp());
}

class MyVisitorApp extends StatelessWidget {
  const MyVisitorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyVisitor',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/visitors': (context) => const VisitorsScreen(),
        '/deliveries': (context) => const DeliveriesScreen(),
        '/approvals': (context) => const ApprovalsScreen(),
        '/announcements': (context) => const AnnouncementsScreen(),
        '/payments': (context) => const PaymentsScreen(),
        '/bookings': (context) => const BookingsScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}