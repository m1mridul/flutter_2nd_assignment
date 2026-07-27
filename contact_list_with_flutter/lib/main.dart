import 'package:flutter/material.dart';
import 'package:flutter_2nd_assignment/contactListScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact List',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const ContactListScreen(),
    );
  }
}
