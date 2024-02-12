import 'package:flutter/material.dart';
import 'package:uts/main.dart';

class Author extends StatefulWidget {
  const Author({Key? key}) : super(key: key);

  @override
  State<Author> createState() => _AuthorState();
}

class _AuthorState extends State<Author> {
  String _nama = "";
  String _nim = "";
  String _kelas = "";

  @override
  Widget build(BuildContext context) {
    final TextStyle inputStyle = TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
          child: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Masukkan Nama : "),
            onChanged: (text) {
              var rv = text;
              if (rv != null) {
                setState(() {
                  _nama = rv;
                });
              }
            },
          ),
          TextField(
            decoration: InputDecoration(hintText: "Masukkan NIM : "),
            onChanged: (text) {
              var rv = text;
              if (rv != null) {
                setState(() {
                  _nim = rv;
                });
              }
            },
          ),
          TextField(
            decoration: InputDecoration(hintText: "Masukkan Kelas : "),
            onChanged: (text) {
              var rv = text;
              if (rv != null) {
                setState(() {
                  _kelas = rv;
                });
              }
            },
          ),
          Spacer(),
          Text(
            "Nama : ${_nama}",
            style: inputStyle,
          ),
          Text(
            "NIM    : ${_nim}",
            style: inputStyle,
          ),
          Text(
            "Kelas  : ${_kelas}",
            style: inputStyle,
          ),
          Spacer(),
        ],
      )),
    );
  }
}
