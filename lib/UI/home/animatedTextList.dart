import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

class animatedTextList{

  List<AnimatedText> homeList = [
    TyperAnimatedText(
      'Flutter Developer',
      textStyle: const TextStyle(
          fontSize: 40.0,
          color: Color(0xff2EBBCE)
      ),
      speed: const Duration(milliseconds: 100),
    ),
    TyperAnimatedText(
      'Mobile Dev Freelancer',
      textStyle: const TextStyle(
          fontSize: 40.0,
          color: Color(0xff2EBBCE)
      ),
      speed: const Duration(milliseconds: 100),
    ),
    TyperAnimatedText(
      'UI Designer',
      textStyle: const TextStyle(
          fontSize: 40.0,
          color: Color(0xff2EBBCE)
      ),
      speed: const Duration(milliseconds: 100),
    ),
  ];

}