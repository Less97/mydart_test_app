import 'package:flutter/material.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("How it works",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black87,
                ),
                ),
                Text("My Description here",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
                )
              ]
            )),
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


      ),
    


    );
  }
}