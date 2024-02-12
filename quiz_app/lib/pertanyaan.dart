import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String teksPertanyaan;

  const Pertanyaan(this.teksPertanyaan);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        teksPertanyaan,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
