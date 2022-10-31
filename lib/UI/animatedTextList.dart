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
      'Mobile Developer',
      textStyle: const TextStyle(
          fontSize: 40.0,
          color: Color(0xff2EBBCE)
      ),
      speed: const Duration(milliseconds: 100),
    ),
    TyperAnimatedText(
      'Freelancer',
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

  List<AnimatedText> aboutList = [
    TypewriterAnimatedText(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
      textStyle: const TextStyle(
          fontSize: 18.0,
          color: Colors.white
      ),
      speed: const Duration(milliseconds: 8),
    ),
  ];

  List<AnimatedText> skillList = [
    TypewriterAnimatedText(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text eve",
      textStyle: const TextStyle(
          fontSize: 18.0,
          color: Colors.white
      ),
      speed: const Duration(milliseconds: 8),
    ),
  ];

}