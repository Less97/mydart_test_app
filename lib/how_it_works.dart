import 'package:flutter/material.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("How it works",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 32,
              color: Colors.black87,
            ),
            ),
            const Text("My Description here",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Back"))
          ]
        ) 
      )
    );
  }
}