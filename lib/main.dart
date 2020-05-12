import 'package:Genesis/CategoryRoute.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CategoryRoute (),
      ),
    ),
  );
}

class MyRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.indigo,
        height: 400,
        width: 300,
        child: Center(
          child: Text(
            "Hello",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 50, color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
