import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text("I'am Strong")),
      body: Center(
        child: Image(
          image: AssetImage('AssetImage/strong1.png'),
        ),
      ),
    ),
  ));
}
