import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerComponent extends StatefulWidget {

  const AudioPlayerComponent({super.key});

  @override
  State<AudioPlayerComponent> createState(){
    return AudioPlayerComponentState();
  } 
}

class AudioPlayerComponentState extends State<AudioPlayerComponent> {

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(
        child: Column(children: [
        
        
        ]
      )
      );
  }
}