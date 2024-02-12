import 'dart:ffi';

import 'package:flutter/material.dart';
import 'jawaban.dart';
import 'pertanyaan.dart';
import 'hasil.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _indeksPertanyaan = 0;
  var _nilaiTotal = 0;

  void _jawabPertanyaan(int nilai) {
    _nilaiTotal = _nilaiTotal + nilai;
    setState(() {
      _indeksPertanyaan = _indeksPertanyaan + 1;
    });

    print(
        "Jawaban telah dipilih, indeks pertanyaan berikut = $_indeksPertanyaan");
  }

  void restartQuiz() {
    setState(() {
      _indeksPertanyaan = 0;
      _nilaiTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var listPertanyaan = [
      {
        "teks": "Hari Sumpah Pemuda jatuh pada tanggal berapa?",
        "jawab": [
          {"teks": "26 Oktober", "nilai": 0},
          {"teks": "27 Oktober", "nilai": 0},
          {"teks": "28 Oktober", "nilai": 10},
          {"teks": "29 Oktober", "nilai": 0},
        ]
      },
      {
        "teks": "1 hari berapa menit?",
        "jawab": [
          {"teks": "1140", "nilai": 0},
          {"teks": "1410", "nilai": 0},
          {"teks": "1400", "nilai": 0},
          {"teks": "1440", "nilai": 10},
        ]
      },
      {
        "teks": "Berapa jumlah huruf Alfabet?",
        "jawab": [
          {"teks": "26", "nilai": 10},
          {"teks": "27", "nilai": 0},
          {"teks": "28", "nilai": 0},
          {"teks": "29", "nilai": 0},
        ]
      },
      {
        "teks": "Tanggal 1 Juni memperingati hari apa?",
        "jawab": [
          {"teks": "Kesaktian Pancasila", "nilai": 0},
          {"teks": "Lahir Pancasila", "nilai": 10},
          {"teks": "Pembuatan Pancasila", "nilai": 0},
          {"teks": "Pembacaan Pancasila", "nilai": 0},
        ]
      },
      {
        "teks": "1 dekade sama dengan berapa tahun?",
        "jawab": [
          {"teks": "5 tahun", "nilai": 0},
          {"teks": "10 tahun", "nilai": 10},
          {"teks": "12 tahun", "nilai": 0},
          {"teks": "100 tahun", "nilai": 0},
        ]
      },
      {
        "teks": "1 tahun berapa minggu?",
        "jawab": [
          {"teks": "50 minggu", "nilai": 0},
          {"teks": "51 minggu", "nilai": 0},
          {"teks": "52 minggu", "nilai": 10},
          {"teks": "53 minggu", "nilai": 0},
        ]
      },
    ];
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App | Nico Syah Anafi, NIM : 20201048"),
        ),
        body: Center(
          child: _indeksPertanyaan <= listPertanyaan.length - 1
              ? Column(
                  children: [
                    Pertanyaan(
                        listPertanyaan[_indeksPertanyaan]["teks"].toString()),
                    ...(listPertanyaan[_indeksPertanyaan]["jawab"]
                            as List<Map<String, Object>>)
                        .map(
                      (jawaban) {
                        return Jawaban(
                          jawaban["teks"].toString(),
                          () => _jawabPertanyaan(jawaban["nilai"] as int),
                        );
                      },
                    ),
                  ],
                )
              : Hasil(_nilaiTotal, restartQuiz),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
