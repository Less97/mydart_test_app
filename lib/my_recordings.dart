import 'package:flutter/material.dart';
import "record.dart";

class MyRecordings extends StatefulWidget {

  const MyRecordings({super.key});

  @override
  State<MyRecordings> createState(){
    return MyRecordingsState();
  } 
}

class MyRecordingsState extends State<MyRecordings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
         ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.audio_file),
              title: Text('Car'),
              trailing: Icon(Icons.play_arrow),
            ),
            ListTile(
              leading: Icon(Icons.audio_file),
              title: Text('Flight'),
              trailing: Icon(Icons.play_arrow),
            ),
            ListTile(
              leading: Icon(Icons.audio_file),
              title: Text('Train'),
              trailing: Icon(Icons.play_arrow),
            )
          ],
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