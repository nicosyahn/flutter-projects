import 'package:flutter/material.dart';
import 'custom_theme.dart';
import 'home.dart';

void main() {
  runApp(const Resepimedia());
}

class Resepimedia extends StatelessWidget {
  const Resepimedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CustomTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Resepimedia',
      home: Home(),
    );
  }
}
