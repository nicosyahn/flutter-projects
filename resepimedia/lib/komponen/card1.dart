import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Judul',
            style: Theme.of(context).textTheme.headline2,
          )
        ],
      ),
    );
  }
}
