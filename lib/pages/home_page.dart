import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("CATALOG APP"),
      ),
      body: Center(
        child: Text("Welcome to $days days of flutter "),
      ),
      drawer: const Drawer(),
    );
  }
}
