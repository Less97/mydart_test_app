import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_recordings.dart';
import 'how_it_works.dart';

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
            onPressed: () =>
            {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const HowItWorks()))
            },
           child: const Text("How it works")),
           ElevatedButton(
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