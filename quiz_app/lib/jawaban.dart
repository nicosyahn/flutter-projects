import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final String teksJawaban;
  final Function() selectHandler; //bisa final VoidCalledBack selectHandler;

  const Jawaban(this.teksJawaban, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(teksJawaban),
          style: ElevatedButton.styleFrom(
              primary: Colors.lightGreenAccent, onPrimary: Colors.black87),
        ),
      ),
    );
  }
}
