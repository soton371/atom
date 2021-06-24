import 'package:atom_new/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'atomColors.dart';



class SplashScr extends StatefulWidget {
  @override
  _SplashScrState createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {


  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      backgroundColor: Color(AtomColors.bgcolor),
      imageSrc: 'images/slogo.png',
      imageSize: 100,
      home: SignIn(),
      duration: 4000,
      text: "Atom Happening",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w300,
      ),
      colors: [
        Color(AtomColors.blue),
        Color(AtomColors.yellow),
        Color(AtomColors.white),
      ],
    );
  }
}

