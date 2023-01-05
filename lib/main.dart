import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numsound) {
    AudioPlayer().play(AssetSource('note$numsound.wav'));
  }

  Widget buildsong(int numsong, Color col) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(col)),
        onPressed: () {
          playSound(numsong);
        },
        child: Expanded(
          child: Text(''),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildsong(1, Colors.amber.shade100),
            buildsong(2, Colors.blue.shade100),
            buildsong(3, Colors.pink.shade100),
            buildsong(4, Colors.purple.shade100),
            buildsong(5, Colors.green.shade100),
            buildsong(6, Colors.lime.shade200),
            buildsong(7, Colors.orange.shade100),
          ]),
        ),
      ),
    );
  }
}
