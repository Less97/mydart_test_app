import 'package:flutter/material.dart';
import "audio_player.dart";
import "models/audiodata.dart";

class CreateAudio1 extends StatefulWidget {

  const CreateAudio1({super.key});

  @override
  State<CreateAudio1> createState(){
    return CreateAudio1State();
  } 
}



class CreateAudio1State extends State<CreateAudio1> {

final List<AudioData> intros = [
    AudioData("", "Intro 1"),
    AudioData("", "Intro 2"),
    AudioData("", "Intro 3"),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
      ListView(
          children: intros.map((i) => ListTile(
              leading: const Icon(Icons.audio_file),
              title: Text(i.title),
              trailing: const Icon(Icons.play_arrow),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AudioPlayer()));
              },
          )).toList(),
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
    ));
  }
}