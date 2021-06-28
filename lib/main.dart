import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';





void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


void Play(int sound){
  final player = AudioCache();
  player.play('assets/note$sound.wav');

}
Expanded Output({Color color,  int Sound}){
  return Expanded(
    child: FlatButton(


      color: color,
      onPressed: () {
        print('hi');


        Play(Sound);
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

            children: <Widget>[

              Output(color: Colors.red, Sound: 1),
              Output(color: Colors.teal, Sound: 2),
              Output(color: Colors.blue, Sound: 3),
              Output(color: Colors.indigo, Sound: 4),
              Output(color: Colors.brown, Sound: 5),
              Output(color: Colors.yellow, Sound: 6),
              Output(color: Colors.orange, Sound: 7),


            ],

          ),



        ),

      ),
    );

  }
}
