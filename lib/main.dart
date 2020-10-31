import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundTrack){
    final player = AudioCache();
    player.play('note$soundTrack.wav');
  }

  Expanded playKey({Color color, int soundTrack}){
    return Expanded(
        child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundTrack);
        }
        ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                playKey(color: Colors.redAccent, soundTrack: 1),
                playKey(color: Colors.lightBlueAccent, soundTrack: 2),
                playKey(color: Colors.green, soundTrack: 3),
                playKey(color: Colors.deepOrange, soundTrack: 4),
                playKey(color: Colors.yellow, soundTrack: 5),
                playKey(color: Colors.pink, soundTrack: 6),
                playKey(color: Colors.purple, soundTrack: 7),
              ],
            ),
          ),
          ),
        ),
      );
  }
}
