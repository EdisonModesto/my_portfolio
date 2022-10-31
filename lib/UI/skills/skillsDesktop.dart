import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../animatedTextList.dart';
import '../progress.dart';

class skillsDesktop extends StatefulWidget {
  const skillsDesktop({Key? key}) : super(key: key);

  @override
  State<skillsDesktop> createState() => _skillsDesktopState();
}

class _skillsDesktopState extends State<skillsDesktop> {

  @override
  void initState() {
    super.initState();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff313131),
        image: DecorationImage(
          image: AssetImage("assets/images/stairBg.png"),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.all(100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My Skills",
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Major Skills",
                style: TextStyle(
                    fontSize: 28.0,
                    color: Color(0xff2EBBCE),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 600,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/flutter_logo.png",
                              scale: 5,
                            ),
                            SizedBox(width: 30),
                            Text(
                              "Flutter : ",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 350,
                          child: progressBar(
                              [
                                Color(0xff00569E),
                                Color(0xff00B5F8),
                                Color(0xff2EBBCE),
                              ],
                              0.9
                          )
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/kotlinLogo.png",
                              scale: 5,
                            ),
                            SizedBox(width: 30),
                            Text(
                              "Kotlin : ",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: 350,
                            child: progressBar(
                                [
                                  Color(0xffE44857),
                                  Color(0xff9D4B9D),
                                  Color(0xff6D5FAA),
                                ],
                                0.75
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/firebaseLogo.png",
                              scale: 5,
                            ),
                            SizedBox(width: 30),
                            Text(
                              "Firebase : ",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: 350,
                            child: progressBar(
                                [
                                  Color(0xffF6820C),
                                  Color(0xffFFA712),
                                  Color(0xffFCCA3F),
                                ],
                                0.94
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/androidStudioLogo.png",
                              scale: 5,
                            ),
                            SizedBox(width: 30),
                            Text(
                              "Android Studio : ",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: 350,
                            child: progressBar(
                                [
                                  Color(0xff699BF7),
                                  Color(0xff36B07D),
                                  Color(0xff36B07D),
                                ],
                                0.85
                            )
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Others",
                style: TextStyle(
                  fontSize: 28.0,
                  color: Color(0xff2EBBCE),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/supabaseLogo.png",
                    scale: 5,
                  ),
                  SizedBox(width: 30),
                  Image.asset(
                    "assets/images/amplifyLogo.png",
                    scale: 5,
                  ),
                  SizedBox(width: 30),
                  Image.asset(
                    "assets/images/lottieLogo.png",
                    scale: 5,
                  ),
                  SizedBox(width: 30),
                  Image.asset(
                    "assets/images/figmaLogo.png",
                    scale: 5,
                  ),
                ],
              ),
            ],
          ),

          SizedBox(
            width: 800,
            child: AnimatedTextKit(
              animatedTexts: animatedTextList().skillList,
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),

        ],
      ),
    );
  }
}
