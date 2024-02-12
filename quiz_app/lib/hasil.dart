import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final int nilaiAkhir;
  final Function() restartQuiz;

  const Hasil(this.nilaiAkhir, this.restartQuiz);

  String get feedback {
    String teksFeedback;
    if (nilaiAkhir >= 25) {
      teksFeedback = "Score ${nilaiAkhir}, Selamat, nilai anda memuaskan";
    } else if (nilaiAkhir > 15 && nilaiAkhir < 25) {
      teksFeedback = "Score ${nilaiAkhir}, Selamat, nilai anda mencukupi";
    } else {
      teksFeedback = "Score ${nilaiAkhir}, Maaf, nilai anda tidak mencukupi";
    }
    return teksFeedback;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            feedback,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          onPressed: restartQuiz,
          child: Text("Restart Quiz"),
          style: ElevatedButton.styleFrom(
              primary: Colors.lightGreenAccent, onPrimary: Colors.black87),
        )
      ],
    );
  }
}
