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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0), 
              child:TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Name your recording',
                  ),
                  validator: (value){
                    if(value == ""){
                      return "recording name cannot be empty";
                    }
                    recordingTitle = "";
                    return null;
                  },
                ), )
            ,
                const SizedBox(height: 30),
          ElevatedButton.icon(onPressed: () => {
          }, 
          icon: const Icon(Icons.mic, color: Colors.red,size: 30), 
          label: const Text("Record your Audio")),
          ElevatedButton.icon(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios, color: Colors.blue, size: 30), 
            label: const Text("Back"))                    
      ]
    ))
    );
  }
}