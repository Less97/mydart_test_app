import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Html(data: r"""<html>
          <body><h1>How it works1</h1></body></html>""")
        ]
      ))
      );
  }
}