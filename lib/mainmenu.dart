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
          ElevatedButton(
            onPressed: () =>
            {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const MainMenu()))
            },
           child: const Text("How it works"))
        ]
      ))
      );
  }
}