import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyAudio extends StatefulWidget{
  @override
  _MyAudioState createState() => _MyAudioState();

}
class _MyAudioState extends State<MyAudio> {
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  void dispose(){
    audioPlayer.dispose();
    super.dispose();
  }

  void playAudio() async {
    await audioPlayer.play(AssetSource('audio/Terry-Apala-Jangolova.mp3'));
  }

  void stopAudio() async{
    await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold (
        appBar: AppBar(
          title: const Text('Audio player'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: playAudio, child: const Text('Play Audio')),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: stopAudio, child: const Text('stop Aduio'),
              )
            ],
        ),),
      )
    );
  }

 
}