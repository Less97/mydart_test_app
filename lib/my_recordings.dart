import 'package:flutter/material.dart';
import "audio_player.dart";
import "models/audiodata.dart";

class MyRecordings extends StatefulWidget {
  const MyRecordings({super.key});

  @override
  State<MyRecordings> createState(){
    return MyRecordingsState();
  } 
}

class MyRecordingsState extends State<MyRecordings> {

  final List<AudioData> recordings = [
    AudioData("", "recording 1"),
    AudioData("", "recording 2"),
    AudioData("", "recording 3"),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
         ListView(
          children: recordings.map((r) => ListTile(
              leading: const Icon(Icons.audio_file),
              title: Text(r.title),
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