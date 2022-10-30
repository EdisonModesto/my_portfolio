import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/UI/home/animatedTextList.dart';

class homeUI extends StatefulWidget {
  const homeUI({Key? key}) : super(key: key);

  @override
  State<homeUI> createState() => _homeUIState();
}

class _homeUIState extends State<homeUI> {



  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff313131),
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              children: const [
                Text(
                  "Portfolio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),
                Icon(
                  Icons.logo_dev,
                  size: 40,
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Center(
              child: SizedBox(
                height: 475,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 220,
                      width: 220,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(200)),
                        child: Image.asset(
                          "assets/images/myPic.jpg"
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "Hi! I'm ",
                                style: TextStyle(
                                    fontSize: 48,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                "Edison Modesto",
                                style: TextStyle(
                                    fontSize: 48,
                                    color: Color(0xff2EBBCE),
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "I'm a ",
                                style: TextStyle(
                                    fontSize: 32.0,
                                    color: Colors.white
                                ),
                              ),
                              AnimatedTextKit(
                                animatedTexts: animatedTextList().homeList,
                                totalRepeatCount: 200,
                                pause: const Duration(milliseconds: 1000),
                                displayFullTextOnTap: true,
                                stopPauseOnTap: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 68,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
