import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void playSound(int number) {
  final player = AudioPlayer();
  player.play(AssetSource('note$number.wav'));
}

class XylophoneApp extends StatelessWidget {
  Widget buildKey(int number, Color color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            playSound(number);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            elevation: MaterialStateProperty.all<double>(10),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          child: Text(
            number.toString(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.purple),
              buildKey(2, Colors.blue),
              buildKey(3, Colors.green),
              buildKey(4, Colors.red),
              buildKey(5, Colors.yellow),
              buildKey(6, Colors.orange),
              buildKey(7, Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}
