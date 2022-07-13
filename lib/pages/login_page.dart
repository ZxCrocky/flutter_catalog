import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text("Login page",style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
          fontStyle: FontStyle.italic,
        ) ,),
      ),
    );
  }
}