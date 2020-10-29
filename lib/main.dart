import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number){
       final player = AudioCache();
       player.play('note$number.wav');
  }


  Expanded playKey({Color color,int soundNumber}){
    return Expanded(
                  child: FlatButton(
                  color: color,
                  onPressed: (){
                   playSound(soundNumber);
                  }, 
                  child: null, 
                  ),
           );
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playKey(color:Colors.red,soundNumber : 1),
              playKey(color:Colors.orange,soundNumber:2),
              playKey(color:Colors.yellow,soundNumber:3),
              playKey(color:Colors.green,soundNumber:4),
              playKey(color:Colors.teal,soundNumber:5),
              playKey(color:Colors.blue,soundNumber:6),
              playKey(color:Colors.purple,soundNumber:7)
            ],
          ),
        ),
      ),
    );
  }
}
