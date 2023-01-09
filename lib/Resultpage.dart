import 'package:flutter/material.dart';
import 'card.dart';
import 'Bmibrain.dart';

const numsty = TextStyle(
  fontSize: 80,
  fontWeight: FontWeight.w900,
);

class Results extends StatelessWidget {
  Results(this.w, this.h);
  final w, h;

  @override
  Widget build(BuildContext context) {
    Bmibrain bigb = Bmibrain(w, h);
    print(w.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CAlCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Results",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Cardd(
              Color(0xFF111328),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bigb.gret(),
                    style: TextStyle(fontSize: 30, color: bigb.getc()),
                  ),
                  Text(
                    bigb.calc().toStringAsFixed(1),
                    style: TextStyle(fontSize: 80),
                  ),
                  Text(
                    bigb.msg(),
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("ReCalculate", style: TextStyle(fontSize: 50)),
              )),
              height: 80,
              width: double.infinity,
              color: Color(0xFFEB1555),
            ),
          )
        ],
      ),
    );
  }
}
