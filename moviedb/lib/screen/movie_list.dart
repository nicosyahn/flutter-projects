import 'package:flutter/material.dart';
import '../komponen/http_helper.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  String result = '';
  HttpHelper helper = HttpHelper();

  @override
  Widget build(BuildContext context) {
    helper.getUpcoming().then((value) {
      setState(() {
        result = value;
      });
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Datar Film'),
      ),
      body: Text(result),
    );
  }
}
