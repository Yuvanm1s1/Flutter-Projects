import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'results_page.dart';
import 'calculator_brain.dart';
const BottomContainerColor = Color(0XFFEB1555);
const InactiveCardColor = Color(0xff1D1E33);
const ActiveCardColor = Color(0xff111328);
const maleIcon = Icon(FontAwesomeIcons.mars, size: 80.0);
const femaleIcon = Icon(FontAwesomeIcons.venus, size: 80.0);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void updateColor(int val) {
    if (val == 1) {
      //male
      if (maleCardColor == InactiveCardColor) {
        maleCardColor = ActiveCardColor;
      } else {
        maleCardColor = InactiveCardColor;
      }
    } else {
      if (femaleCardColor == InactiveCardColor) {
        femaleCardColor = ActiveCardColor;
      } else {
        femaleCardColor = InactiveCardColor;
      }
    }
  }


  int height = 180;
  int weight = 50;
  int age = 25; // Added age variable
  Color femaleCardColor = InactiveCardColor;
  Color maleCardColor = InactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
                    cardChild: IconContent(
                      icon: maleIcon,
                      label: 'male',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColor,
                    cardChild: IconContent(
                      icon: femaleIcon,
                      label: 'female',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: InactiveCardColor,
                  cardChild: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Height',
                        style: TextStyle(
                            fontSize: 18.0, color: Color(0xFF8D8E98)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                              // height=newValue.round();
                            });
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: InactiveCardColor,
                  cardChild: Column(
                    children: <Widget>[
                      Text(
                        'Weight',
                        style: TextStyle(
                            fontSize: 18.0, color: Color(0xFF8D8E98)),
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF4C4F5E),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                              icon: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 180.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF4C4F5E),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight = weight - 1;
                                });
                              },
                              icon: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: InactiveCardColor,
                  cardChild: Column(
                    children: <Widget>[
                      Text(
                        'Age',
                        style: TextStyle(
                            fontSize: 18.0, color: Color(0xFF8D8E98)),
                      ),
                      Text(
                        age.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF4C4F5E),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age += 1;
                                });
                              },
                              icon: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 180.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF4C4F5E),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age = age - 1;
                                });
                              },
                              icon: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                CalculatorBrain cal = new CalculatorBrain(height, weight);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(bmi: cal.calculate(), Rtext: cal.calText(),)));

              });
            },
            child: Container(
              child: Center(child: Text('CALCULATE',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),)),
              color: BottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {+
  IconContent({required this.icon, required this.label});
  final Icon icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 200.0,
      width: 170.0,
      child: cardChild,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: InputPage(),
  ));
}
