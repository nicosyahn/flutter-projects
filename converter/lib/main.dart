import 'package:flutter/material.dart';

void main() => runApp(const Converter());

class Converter extends StatefulWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  late double _numberFrom;
  String _teksMenu = 'meter';
  String _satuanTujuan = 'meter';
  String teksHasil = '';
  final Map<String, int> _mapSatuan = {
    "meter": 0,
    "kilometer": 1,
    "gram": 2,
    "kilogram": 3,
    "kaki": 4,
    "mil": 5,
    "pound": 6,
    "ons": 7,
    "idr": 8,
    "usd": 9
  };

  final dynamic _rumus = {
    "0": [1, 0.0001, 0, 0, 3.28084, 0.00062, 0, 0, 0, 0],
    "1": [1000, 1, 0, 0, 3280.84, 0.62137, 0, 0, 0, 0],
    "2": [0, 0, 1, 0.0001, 0, 0, 0.0022, 0.03527, 0, 0],
    "3": [0, 0, 1000, 1, 0, 0, 2.20462, 35.274, 0, 0],
    "4": [0.3048, 0.0003, 0, 0, 1, 0.00019, 0, 0, 0, 0],
    "5": [1609.34, 1.60934, 0, 0, 5280, 1, 0, 0, 0, 0],
    "6": [0, 0, 453.592, 0.45359, 0, 0, 1, 16, 0, 0],
    "7": [0, 0, 28.3495, 0.02835, 0, 0, 0.0625, 1, 0, 0],
    "8": [0, 0, 0, 0, 0, 0, 0, 0, 1, 0.000063],
    "9": [0, 0, 0, 0, 0, 0, 0, 0, 15000, 1],
  };

  List<String> _menu = [
    "meter",
    "kilometer",
    "gram",
    "kilogram",
    "kaki",
    "mil",
    "pound",
    "ons",
    "idr",
    "usd"
  ];

  @override
  void initState() {
    _numberFrom = 0;
    _satuanTujuan = 'meter';
  }

  void convert(double nilai, String dari, String konversiKe) {
    int? asal = _mapSatuan[dari];
    int? ke = _mapSatuan[konversiKe];
    var pengali = _rumus[asal.toString()][ke];
    var hasil = nilai * pengali;
    if (hasil == 0) {
      teksHasil = "Tidak bisa dikonversi";
    } else {
      teksHasil = "Hasil Konversi = ${hasil}";
      setState(() {
        teksHasil = teksHasil;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle labelStyle = TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue);
    final TextStyle inputStyle =
        TextStyle(fontSize: 18, color: Colors.lightGreen);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Converter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konversi Ukuran"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Nilai",
                  style: labelStyle,
                ),
                TextField(
                  onChanged: (isiTextField) {
                    var rv = double.tryParse(isiTextField);
                    if (rv != null) {
                      setState(() {
                        _numberFrom = rv;
                      });
                    }
                  },
                ),
                Spacer(),
                Text(
                  "Satuan Awal",
                  style: labelStyle,
                ),
                Spacer(),
                DropdownButton(
                  isExpanded: true,
                  value: _teksMenu,
                  items: _menu
                      .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e,
                            style: inputStyle,
                          )))
                      .toList(),
                  onChanged: (satuan) {
                    setState(() {
                      _teksMenu = satuan!;
                    });
                  },
                ),
                Spacer(),
                Text(
                  "Konversi ke",
                  style: labelStyle,
                ),
                Spacer(),
                DropdownButton(
                  isExpanded: true,
                  value: _satuanTujuan,
                  items: _menu
                      .map((isi) => DropdownMenuItem(
                          value: isi,
                          child: Text(
                            isi,
                            style: inputStyle,
                          )))
                      .toList(),
                  onChanged: (satuan) {
                    setState(() {
                      _satuanTujuan = satuan!;
                    });
                  },
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () =>
                      convert(_numberFrom, _teksMenu, _satuanTujuan),
                  child: Text("Hitung"),
                ),
                Spacer(),
                Text(
                  teksHasil,
                  style: labelStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
