import 'dart:convert';

import 'package:flutter/material.dart';
import 'models/audiodata.dart';
import 'dart:developer' as developer;

class CreateAudio1 extends StatefulWidget {

  const CreateAudio1({super.key});

  @override
  State<CreateAudio1> createState(){
    return CreateAudio1State();
  } 
}

class CreateAudio1State extends State<CreateAudio1> {

   Future<List<AudioData>> buildAudioData() async{
    String stringFromJson = await DefaultAssetBundle.of(context).loadString("assets/data.json");
    developer.log("audio from json $stringFromJson");
    return jsonDecode(stringFromJson) as List<AudioData>;
   }

  List<AudioData> audioData = [];

  @override
  void initState() {
    super.initState();
    buildAudioData().then((value) => setState(() {audioData = value;}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
      ListView(
          children: audioData.map((i) => ListTile(
              leading: const Icon(Icons.audio_file),
              title: Text(i.title),
              trailing: const Icon(Icons.play_arrow),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAudio1()));
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