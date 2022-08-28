import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 30
          ),
          child: TextLiquidFill(
            text: "Let's play",
            textAlign: TextAlign.center,
            waveColor: Colors.purple,
            boxBackgroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ),
    );
  }
}
