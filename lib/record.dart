import 'package:flutter/material.dart';

class Record extends StatefulWidget {

  const Record({super.key});

  @override
  State<Record> createState(){
    return RecordState();
  } 
}

class RecordState extends State<Record> {

  var recordingTitle = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton.icon(onPressed: () => {
          }, 
          icon: const Icon(Icons.mic, color: Colors.red, size: 50), 
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