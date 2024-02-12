import 'package:flutter/material.dart';
import 'komponen/author.dart';
import 'package:uts/komponen/page1.dart';
import 'package:uts/komponen/page2.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const Author(),
    const Page1(),
    const Page2(),
  ];

  void _onItemTapped(int indeksValue) {
    setState(() {
      _selectedIndex = indeksValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Pembuat',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Page 1',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Page 2',
            ),
          ],
        ),
        appBar: AppBar(
          title: Text(
            "UTS Mobile Programming | Nico Syah Anafi (20201048)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
