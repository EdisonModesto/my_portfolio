import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/providers/UI%20Providers.dart';
import 'package:provider/provider.dart';

import '../animatedTextList.dart';

class aboutDesktop extends StatefulWidget {
  const aboutDesktop({Key? key}) : super(key: key);

  @override
  State<aboutDesktop> createState() => _aboutDesktopState();
}

class _aboutDesktopState extends State<aboutDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff313131),
        image: DecorationImage(
          image: AssetImage("assets/images/wallBg.png"),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.all(context.watch<UIProviders>().screenPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(500)),
            child: Image.asset(
              "assets/images/myPic.jpg",
              width: 150,
            ),
          ),

          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: context.watch<UIProviders>().screenTitles,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 800,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Hi! I'm Edison Modesto, and I'm a Mobile Developer from the Philippines. I'm currently a student at the Pamantasan ng Lungsod ng Maynila taking my Bachelor of Science in Computer Science. I have 2 years worth of experience in mobile development and would be glad to work with you on a project!",
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
          ),

          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Interests",
                  style: TextStyle(
                      fontSize: context.watch<UIProviders>().screenTitles,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: context.watch<UIProviders>().socialConWidth,
                  height: context.watch<UIProviders>().socialConHeight,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Image.asset("assets/images/githubLogo.png"),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Image.asset("assets/images/linkedLogo.png"),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Image.asset("assets/images/upworkLogo.png"),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Image.asset("assets/images/fiverLogo.png"),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Image.asset("assets/images/fbLogo.png"),
                      )
                    ],
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
