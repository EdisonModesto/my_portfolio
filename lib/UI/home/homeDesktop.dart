import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/UI/animatedTextList.dart';
import 'package:portfolio/providers/UI%20Providers.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class homeUI extends StatefulWidget {
  const homeUI({Key? key}) : super(key: key);

  @override
  State<homeUI> createState() => _homeUIState();
}

class _homeUIState extends State<homeUI> with AutomaticKeepAliveClientMixin {

  var sizeGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff313131),
        image: DecorationImage(
          image: AssetImage("assets/images/homeBg.png"),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.only(left: context.watch<UIProviders>().screenPadding, right: context.watch<UIProviders>().screenPadding),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              children: [
                const Text(
                  "Portfolio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),
                const SizedBox(width: 15,),
                Image.asset(
                  "assets/images/portfolioLogo.png",
                  scale: 6.5,
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: SizedBox(
                height: 475,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: context.watch<UIProviders>().homePhoto,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(200)),
                        child: Image.asset(
                          "assets/images/myPic.jpg"
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "Hi! I'm ",
                              style:  TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:  context.watch<UIProviders>().HomeTitle
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Edison Modesto',
                                  style: TextStyle(
                                      color: Color(0xff2EBBCE),
                                      fontWeight: FontWeight.bold,
                                      fontSize: context.watch<UIProviders>().HomeTitle
                                  ),
                                ),
                              ],
                            ),
                            maxLines: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "I'm a ",
                                style: TextStyle(
                                    fontSize:  context.watch<UIProviders>().screenTitles,
                                    color: Colors.white
                                ),
                              ),
                              AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText(
                                    'Flutter Developer',
                                    textStyle: TextStyle(
                                        fontSize: context.watch<UIProviders>().screenTitles,
                                        color: Color(0xff2EBBCE)
                                    ),
                                    speed: const Duration(milliseconds: 100),
                                  ),
                                  TyperAnimatedText(
                                    'Mobile Developer',
                                    textStyle: TextStyle(
                                        fontSize: context.watch<UIProviders>().screenTitles,
                                        color: Color(0xff2EBBCE)
                                    ),
                                    speed: const Duration(milliseconds: 100),
                                  ),
                                  TyperAnimatedText(
                                    'Freelancer',
                                    textStyle: TextStyle(
                                        fontSize: context.watch<UIProviders>().screenTitles,
                                        color: Color(0xff2EBBCE)
                                    ),
                                    speed: const Duration(milliseconds: 100),
                                  ),
                                  TyperAnimatedText(
                                    'UI Designer',
                                    textStyle: TextStyle(
                                        fontSize: context.watch<UIProviders>().screenTitles,
                                        color: Color(0xff2EBBCE)
                                    ),
                                    speed: const Duration(milliseconds: 100),
                                  ),
                                ],
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
                    SizedBox(
                      height: 40,
                    ),
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
                            onTap: (){
                              launchUrl(Uri.parse("https://github.com/EdisonModesto"));
                            },
                            child: Image.asset("assets/images/githubLogo.png"),
                          ),
                          InkWell(
                            onTap: (){
                              launchUrl(Uri.parse("https://www.linkedin.com/in/edison-modesto-a65440219/"));
                            },
                            child: Image.asset("assets/images/linkedLogo.png"),
                          ),
                          InkWell(
                            onTap: (){
                              launchUrl(Uri.parse("https://www.upwork.com/freelancers/~013a5847212e7b3d32"));

                            },
                            child: Image.asset("assets/images/upworkLogo.png"),
                          ),
                          InkWell(
                            onTap: (){
                              launchUrl(Uri.parse("https://www.facebook.com/ed.modestoo"));

                            },
                            child: Image.asset("assets/images/fbLogo.png"),
                          ),
                          InkWell(
                            onTap: (){
                              final Uri emailLaunchUri = Uri(
                                scheme: 'mailto',
                                path: 'edisonmodesto@protonmail.com',
                                query: encodeQueryParameters(<String, String>{
                                  'subject': "Let's connect!",
                                }),
                              );

                              launchUrl(emailLaunchUri);
                            },
                            child: Image.asset("assets/images/email.png"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Text("Scroll down to see more", style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
  @override
  bool get wantKeepAlive => true;
}
