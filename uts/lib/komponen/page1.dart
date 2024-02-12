import 'package:flutter/material.dart';

void main() {
  runApp(const Page1());
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  void kontakKami() {
    print("www.nicosyah.com");
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle inputStyle = TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue);
    return Builder(
      builder: (context) {
        return SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Selamat datang di Indonesia",
                    style: inputStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Selamat menikmati keindahan Indonesia",
                    style: inputStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                      image: NetworkImage(
                          "https://www.indonesia-tourism.com/bali/images/Tempel-Bedugul-.jpg")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                      "https://www.indonesia-tourism.com/bali/images/Tempel-Bedugul-.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () => myDialog(context),
                      child: Text("Hubungi Kami")),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

void myDialog(BuildContext ctx) {
  showDialog(
      context: ctx,
      builder: (BuildContext konteks) {
        return AlertDialog(
          title: Text("Hubungi Kami"),
          content: Text("Hubungi Kami di www.nicosyah.com"),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(konteks).pop(),
              child: Text("close"),
            ),
          ],
        );
      });
}
