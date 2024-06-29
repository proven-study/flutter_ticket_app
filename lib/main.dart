import 'package:flutter/material.dart';
import 'package:flutter_ticket_app/base/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Ticket App Home Page'),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title:  const Text('Ticket App Home Page'),
      //     backgroundColor: Colors.deepPurple,
      //     foregroundColor: Colors.white70,
      //     centerTitle: true
      //   ),
      //   body: const Center(child: Text('Ticket App Body')),
      // )
      home: const BottomNavbar()
    );
  }
}

