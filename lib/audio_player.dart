import 'package:flutter/material.dart';

class AudioPlayer extends StatefulWidget {

  const AudioPlayer({super.key});

  @override
  State<AudioPlayer> createState(){
    return AudioPlayerState();
  } 
}

class AudioPlayerState extends State<AudioPlayer> {

  var recordingTitle = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset('assets/imgs/open-source.png'),
           ElevatedButton.icon(onPressed: () => {
           }, 
          icon: const Icon(Icons.play_arrow, color: Colors.blue, size: 50), 
          label: const Text("")),
          
      ]
    ),
    Align(
              alignment: Alignment.bottomLeft,
              child: Container(
               margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
               width: 150,
               child: ElevatedButton(
                  onPressed: () =>
                  {
                    Navigator.pop(context)
                  }, 
                  child: const Text("Back")), 
                ),
            )
    ]
    )
    );
  }
}