import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/UI Providers.dart';
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
      padding: EdgeInsets.all(context.watch<UIProviders>().screenPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Skills",
            style: TextStyle(
                fontSize: context.watch<UIProviders>().screenTitles,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Major Skills",
                style: TextStyle(
                    fontSize: context.watch<UIProviders>().screenTitles,
                    color: Color(0xff2EBBCE),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: context.watch<UIProviders>().skillContainer,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/flutter_logo.png",
                              scale: context.watch<UIProviders>().iconScale,
                            ),
                            SizedBox(width: context.watch<UIProviders>().space),
                            Text(
                              "Flutter : ",
                              style: TextStyle(
                                fontSize: context.watch<UIProviders>().subtext - 1,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: context.watch<UIProviders>().progressWidth,
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
                              scale: context.watch<UIProviders>().iconScale,
                            ),
                            SizedBox(width: context.watch<UIProviders>().space),
                            Text(
                              "Kotlin : ",
                              style: TextStyle(
                                fontSize:  context.watch<UIProviders>().subtext - 1,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: context.watch<UIProviders>().progressWidth,
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
                              scale: context.watch<UIProviders>().iconScale,
                            ),
                            SizedBox(width: context.watch<UIProviders>().space),
                            Text(
                              "Firebase : ",
                              style: TextStyle(
                                fontSize:  context.watch<UIProviders>().subtext - 1,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: context.watch<UIProviders>().progressWidth,
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
                              scale: context.watch<UIProviders>().iconScale,
                            ),
                            SizedBox(width: context.watch<UIProviders>().space),
                            Text(
                              "Android Studio : ",
                              style: TextStyle(
                                fontSize: context.watch<UIProviders>().subtext - 1,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: context.watch<UIProviders>().progressWidth,
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
              Text(
                "Others",
                style: TextStyle(
                  fontSize:  context.watch<UIProviders>().screenTitles,
                  color: Color(0xff2EBBCE),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/supabaseLogo.png",
                    scale: context.watch<UIProviders>().iconScale,
                  ),
                  SizedBox(width: context.watch<UIProviders>().space),
                  Image.asset(
                    "assets/images/amplifyLogo.png",
                    scale: context.watch<UIProviders>().iconScale,
                  ),
                  SizedBox(width: context.watch<UIProviders>().space),
                  Image.asset(
                    "assets/images/lottieLogo.png",
                    scale: context.watch<UIProviders>().iconScale,
                  ),
                  SizedBox(width: context.watch<UIProviders>().space),
                  Image.asset(
                    "assets/images/figmaLogo.png",
                    scale: context.watch<UIProviders>().iconScale,
                  ),
                ],
              ),
            ],
          ),

          SizedBox(
            width: 800,
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "I am flexible in using different technologies in Development, Design and Frameworks. You can ensure that your app will use the latest Technologies for better user experience",
                  textStyle: TextStyle(
                      fontSize: context.watch<UIProviders>().subtext,
                      color: Colors.white
                  ),
                  speed: const Duration(milliseconds: 8),
                ),
              ],
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
