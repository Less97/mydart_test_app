import 'package:flutter/material.dart';

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
      body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text('Recording 1'),
            ),
            ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text('Recording 2'),
            ),
            ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text('Recording 3'),
            ),
          ],
        ),
    );
  }
}