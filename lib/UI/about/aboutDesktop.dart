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
      padding: EdgeInsets.all(context.read<UIProviders>().screenPadding),
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
                    fontSize: context.read<UIProviders>().screenTitles,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 800,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
                        textStyle: TextStyle(
                            fontSize: context.read<UIProviders>().subtext,
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
                      fontSize: context.read<UIProviders>().screenTitles,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: context.read<UIProviders>().socialConWidth,
                  height: context.read<UIProviders>().socialConHeight,
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
