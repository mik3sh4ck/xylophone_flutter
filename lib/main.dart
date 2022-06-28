import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int n){
    final player = AudioPlayer();
    player.setSource(AssetSource('assets/'));
    player.play(AssetSource('note$n.wav'));
  }

  Expanded buildKey({int nSound, Color ncolor}){
    return Expanded(
      child: FlatButton(
        color: ncolor,
        onPressed: () {
          playSound(nSound);
        },
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
            children: [
              buildKey(nSound: 1, ncolor: Colors.red),
              buildKey(nSound: 2, ncolor: Colors.orange),
              buildKey(nSound: 3, ncolor: Colors.yellow),
              buildKey(nSound: 4, ncolor: Colors.green),
              buildKey(nSound: 5, ncolor: Colors.teal),
              buildKey(nSound: 6, ncolor: Colors.blue),
              buildKey(nSound: 7, ncolor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
