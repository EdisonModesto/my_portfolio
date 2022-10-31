import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(100),
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
                const Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 800,
                  child: AnimatedTextKit(
                    animatedTexts: animatedTextList().aboutList,
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
                const Text(
                  "Interests",
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 60,
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
