import 'package:flutter/material.dart';

class Cardd extends StatelessWidget {
  Cardd(this.colour, this.carchil);
  final Color colour;
  final Widget carchil;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: carchil,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
