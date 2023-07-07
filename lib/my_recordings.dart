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
            )
            ]),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
               margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
               width: 150,
               child: ElevatedButton(
                  onPressed: () =>
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> const Record()))
                  }, 
                  child: const Text("Record new")), 
                ),
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