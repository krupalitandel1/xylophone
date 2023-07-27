import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //function for playing music
  void PlayMusic(int soundNUmber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio("assets/note$soundNUmber.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone Application'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    PlayMusic(1);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    PlayMusic(2);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  child: Text(""),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {
                  PlayMusic(3);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                ),
                child: Text(""),
              )),
              Expanded(
                  child: TextButton(
                onPressed: () {
                  PlayMusic(4);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: Text(""),
              )),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    PlayMusic(5);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.green[900]),
                  ),
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    PlayMusic(6);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[600]),
                  ),
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    PlayMusic(7);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[800]),
                  ),
                  child: Text(""),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
