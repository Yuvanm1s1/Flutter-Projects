import 'dart:js_util';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultsPage extends StatefulWidget {
  ResultsPage({required this.bmi,required this.Rtext});
  final String bmi;
  final String Rtext;

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  InputPage p = newObject();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height:20.0),
          Center(
            child: Text('Your Result',style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),),
          ),
          ReusableCard(
            colour: Color(0xff1D1E33),
              cardChild: Column(
                children: <Widget>[
                  SizedBox(height: 20.0,),
                  Center(
                    child: Text(widget.Rtext,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 30.0,
                    ),),
                  ),
                  SizedBox(height: 20.0,),
                  Center(
                    child: Text(
                      widget.bmi,
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));

              });
            },
            child: Container(
              child: Center(child: Text('Return Home',
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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}