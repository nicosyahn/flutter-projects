import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("I'am Crazy Rich")),
      body: Center(
        child: Image(
          image: AssetImage('assetimage/diamond1.jpg'),
        ),
      ),
    ),
  ));
}
