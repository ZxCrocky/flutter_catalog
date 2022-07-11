import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Material(
          child: Container(
            child: Text("Welcome"),
          ),
        ),
      ),
    );
  }
}
