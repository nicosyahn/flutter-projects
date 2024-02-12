import 'package:flutter/material.dart';
import '../model/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie selectedMovie;
  const MovieDetail({Key? key, required this.selectedMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String path;
    double screenHeight = MediaQuery.of(context).size.height;

    if (selectedMovie.posterPath != null) {
      path = 'https://image.tmdb.org/t/p/w500/${selectedMovie.posterPath}';
    } else {
      path =
          'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMovie.title}'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                height: screenHeight / 1.5,
                child: Image.network(path),
              ),
              Text('${selectedMovie.overview}'),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('Rated : ${selectedMovie.voteAverage}'),
                    ),
                  ),
                  Text('Released : ${selectedMovie.releaseDate}'),
                ],
              ),
              Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  'Created by Nico Syah Anafi || 20201048')
            ],
          ),
        ),
      ),
    );
  }
}
