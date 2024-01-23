import 'package:flutter/material.dart';
import 'package:to_do_list/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      appBar: AppBar(
        title: const Text('To Do List'),
        elevation: 0,
      ),
      body: ListView(
        children: const [
          ToDoList(),
        ],
      ),
    );
  }
}
