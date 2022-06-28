import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int n){
    final player = AudioPlayer();
    player.setSource(AssetSource('assets/'));
    player.play(AssetSource('note$n.wav'));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(4);
                },
              ),
              FlatButton(
                color: Colors.lightGreen,
                onPressed: () {
                  playSound(5);
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(6);
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
