import 'package:flutter/material.dart';

class Iconcard extends StatelessWidget {
  Iconcard(this.ic, this.gen);
  final IconData ic;
  final String gen;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(ic, size: 70),
      SizedBox(
        height: 15,
      ),
      Text(
        gen,
        style: TextStyle(fontSize: 18),
      )
    ]);
  }
}
