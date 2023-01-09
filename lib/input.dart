import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon.dart';
import 'card.dart';
import 'Resultpage.dart';

const double bothigh = 80;
const accol = 0xFF1D1E33;
const incol = 0xFF111328;
const numsty = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int mc = incol, fc = incol;
  int hight = 120, weight = 45, age = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        fc = fc == accol ? incol : fc;
                        mc = mc == incol ? accol : incol;
                      });
                    },
                    child: Cardd(
                      Color(mc),
                      Iconcard(FontAwesomeIcons.mars, "Male"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        mc = mc == accol ? incol : mc;
                        fc = fc == incol ? accol : incol;
                      });
                    },
                    child: Cardd(
                      Color(fc),
                      Iconcard(FontAwesomeIcons.venus, "Female"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Cardd(
              Color(accol),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        hight.toString(),
                        style: numsty,
                      ),
                      Text("CM"),
                    ],
                  ),
                  Slider(
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    min: 120.0,
                    max: 220.0,
                    value: hight.toDouble(),
                    onChanged: (double val) {
                      setState(() {
                        hight = val.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cardd(
                    Color(incol),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Weight"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: numsty,
                            ),
                            Text("KG")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutt(FontAwesomeIcons.subtract, () {
                              setState(() {
                                weight--;
                              });
                            }),
                            SizedBox(width: 10),
                            Roundbutt(FontAwesomeIcons.add, () {
                              setState(() {
                                weight++;
                              });
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Cardd(
                    Color(incol),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Age"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: numsty,
                            ),
                            Text("Years")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutt(FontAwesomeIcons.subtract, () {
                              setState(() {
                                age--;
                              });
                            }),
                            SizedBox(width: 10),
                            Roundbutt(FontAwesomeIcons.add, () {
                              setState(() {
                                age++;
                              });
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Results(weight, hight)));
            },
            child: Container(
              child: Center(child: Text("Calculate", style: numsty)),
              height: bothigh,
              width: double.infinity,
              color: Color(0xFFEB1555),
            ),
          )
        ],
      ),
    );
  }
}

class Roundbutt extends StatelessWidget {
  Roundbutt(this.icon, this.kya);
  final IconData icon;
  final Function kya;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: kya,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFFEB1555),
    );
  }
}
