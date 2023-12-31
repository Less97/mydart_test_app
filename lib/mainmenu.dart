import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_recordings.dart';
import 'how_it_works.dart';
import 'create_audio_1.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20),minimumSize: const Size(200,40)),
            onPressed: () =>
            {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const HowItWorks()))
            },
           child: const Text("How it works")),
           const SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20), minimumSize: const Size(200,40) ),
              onPressed: () =>
              {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CreateAudio1()))
              },
           child: const Text("Create Audio")),
            const SizedBox(height: 30,),
           ElevatedButton(
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20), minimumSize: const Size(200,40)),
            onPressed: () =>
            {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const MyRecordings()))
            },
           child: const Text("My Recordings"))
        ]
      ))
      );
  }
}