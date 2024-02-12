import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle inputStyle = TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue);
    return Builder(
      builder: (context) {
        return SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Nico Syah Anafi",
                    style: inputStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("20201048", style: inputStyle),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                      "assets/nico.jpg",
                    ),
                    width: 1024.0,
                    height: 780.0,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
