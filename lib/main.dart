import 'package:flutter/material.dart';
import 'package:portfolio/UI/about/aboutDesktop.dart';
import 'package:portfolio/UI/experience/experienceDesktop.dart';
import 'package:portfolio/UI/home/homeDesktop.dart';
import 'package:portfolio/UI/projects/projectsDesktop.dart';
import 'package:portfolio/UI/skills/skillsDesktop.dart';
import 'package:portfolio/providers/UI%20Providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=> UIProviders()),
        ],
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio | Edison Modesto',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
      ),
      home: const MyHomePage(title: 'Portfolio | Edison Modesto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<bool> navState = [false, false, false, false];
  PageController pageController = PageController();

  bool isCompact = false;

  var desktopScreens = [
    const homeUI(),
    const aboutDesktop(),
    const skillsDesktop(),
    const projectsDesktop(),
    const experienceDesktop()
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext, BoxConstraints ) {

            if(BoxConstraints.maxWidth >= 1200){
              WidgetsBinding.instance.addPostFrameCallback((_){
                context.read<UIProviders>().setFontSize(44, 28, 200, 18, 100, 36, 400, 60, 5, 30, 350, 10, 600, 200, 16, 12, 210, 261, 0.7);
                setState(() {

                });
              });
            }

            if(BoxConstraints.maxWidth <= 1200){
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.read<UIProviders>().setFontSize(36, 25, 175, 18, 70, 26, 325, 55, 5, 25, 325, 10, 550, 200, 16, 12, 210, 271, 0.7);
                setState(() {

                });
              });
            }

            if(BoxConstraints.maxWidth <= 900){
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.read<UIProviders>().setFontSize(30, 23, 150, 18, 60, 24, 275, 50, 6, 20, 275, 8, 500, 200, 14, 10, 210, 271, 0.7);
                setState(() {
                  isCompact = false;
                });
              });
            }
            if (BoxConstraints.maxWidth <= 768) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.read<UIProviders>().setFontSize(34, 23, 150, 16, 60, 26, 350, 60, 7, 15, 225, 8, 450, 175, 12, 8, 190, 251, 1);
                setState(() {
                  isCompact = true;
                });
              });
            }
            if (BoxConstraints.maxWidth <= 520) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.read<UIProviders>().setFontSize(26, 16, 125, 12, 20, 36, 275, 50, 8, 10, 175, 7, 400, 150, 12, 8, 160, 241, 1);
                setState(() {

                });
              });
            }

            if (BoxConstraints.maxWidth <= 350) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.read<UIProviders>().setFontSize(24, 16, 125, 12, 20, 36, 250, 50, 10, 5, 150, 6, 500, 150, 12, 8,  160, 241, 1);
                setState(() {

                });
              });
            }
            
            return Stack(
              children: [
                PageView(
                    scrollDirection: Axis.vertical,
                    controller: pageController,
                    children: desktopScreens
                ),
                isCompact ?
                const SizedBox()
                    :
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 500,
                    width: 250,
                    margin: EdgeInsets.only(right: context.read<UIProviders>().screenPadding),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){
                            pageController.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutSine);
                          },
                          onHover: (value){
                            if(value){
                              setState(() {
                                navState[0] = true;
                              });
                            } else{
                              setState(() {
                                navState[0] = false;
                              });
                            }
                          },
                          child: AnimatedDefaultTextStyle(
                            duration: const Duration(milliseconds: 100),
                            style: TextStyle(
                                fontSize: navState[0] ? context.read<UIProviders>().menuTextF : context.read<UIProviders>().menuTextUF,
                                color: navState[0] ? const Color(0xff2EBBCE) : const Color(0xffc8c8c8)
                            ),
                            child: const Text(
                              "About Me",
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            pageController.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutSine);
                          },
                          onHover: (value){
                            if(value){
                              setState(() {
                                navState[1] = true;
                              });
                            } else{
                              setState(() {
                                navState[1] = false;
                              });
                            }
                          },
                          child: AnimatedDefaultTextStyle(
                            duration: const Duration(milliseconds: 100),
                            style: TextStyle(
                                fontSize: navState[1] ? context.read<UIProviders>().menuTextF : context.read<UIProviders>().menuTextUF,
                                color: navState[1] ? const Color(0xff2EBBCE) : const Color(0xffc8c8c8)
                            ),
                            child: const Text(
                              "My Skills",
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            pageController.animateToPage(3, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutSine);
                          },
                          onHover: (value){
                            if(value){
                              setState(() {
                                navState[2] = true;
                              });
                            } else{
                              setState(() {
                                navState[2] = false;
                              });
                            }
                          },
                          child: AnimatedDefaultTextStyle(
                            duration: const Duration(milliseconds: 100),
                            style: TextStyle(
                                fontSize: navState[2] ? context.read<UIProviders>().menuTextF : context.read<UIProviders>().menuTextUF,
                                color: navState[2] ? const Color(0xff2EBBCE) : const Color(0xffc8c8c8)
                            ),
                            child: const Text(
                              "My Projects",
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            pageController.animateToPage(4, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutSine);
                          },
                          onHover: (value){
                            if(value){
                              setState(() {
                                navState[3] = true;
                              });
                            } else{
                              setState(() {
                                navState[3] = false;
                              });
                            }
                          },
                          child: AnimatedDefaultTextStyle(
                            duration: const Duration(milliseconds: 100),
                            style: TextStyle(
                                fontSize: navState[3] ? context.read<UIProviders>().menuTextF : context.read<UIProviders>().menuTextUF,
                                color: navState[3] ? const Color(0xff2EBBCE) : const Color(0xffc8c8c8)
                            ),
                            child: const Text(
                              "Experience",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        )
      )
    );
  }
}
