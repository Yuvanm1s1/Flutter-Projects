import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child:Column(
            children: <Widget>[
              CircleAvatar(
                radius:50.0,
                backgroundImage:AssetImage('images/laura.jpg') ,
              ),
              Text(
                "Laura Sen",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Designer",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.tealAccent,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child:Row(
                  children: <Widget>[
                    Icon(Icons.phone,color: Colors.black,size: 50.0,),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('+91 7358 280 754',
                      style:TextStyle(
                        fontSize: 20.0, color: Colors.black,fontWeight: FontWeight.bold,
                      ) ,)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child:Row(
                  children: <Widget>[
                    Icon(Icons.mail_lock_rounded,color: Colors.black,size: 50.0,),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('yuvanm1s1@gmail.com',
                      style:TextStyle(
                        fontSize: 20.0, color: Colors.black,fontWeight: FontWeight.bold,
                      ) ,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}





