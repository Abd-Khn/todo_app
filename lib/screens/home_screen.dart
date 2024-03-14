import 'package:flutter/material.dart';
import 'package:todo_app/helpers/drawer_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do App",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.deepPurple.withOpacity(0.8),
        foregroundColor: Colors.white,
      ),
      drawer: DrawerNavigation(),
    );
  }
}
