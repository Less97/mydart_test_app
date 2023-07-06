import 'package:flutter/material.dart';

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
          OutlinedButton(
            onPressed: () =>
            {
                
            },
           child: const Text("How it works"))
        ]
      ))
      );
  }
}