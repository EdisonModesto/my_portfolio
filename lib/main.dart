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
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  var desktopScreens = [
    homeUI(),
    aboutDesktop(),
    skillsDesktop(),
    projectsDesktop(),
    experienceDesktop()
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
          builder: (BuildContext , BoxConstraints ) { 
            
            if (BoxConstraints.maxWidth <= 425) {
              context.read<UIProviders>().setFontSize(38, 22, 100, 12, 40, 36);
            } else if(BoxConstraints.maxWidth <= 800){
              context.read<UIProviders>().setFontSize(28, 22, 150, 12, 60, 36);
            } else if(BoxConstraints.maxWidth <= 1200){
              context.read<UIProviders>().setFontSize(28, 22, 150, 12, 70, 26);
            }
            
            return  Stack(
              children: [
                PageView(
                    scrollDirection: Axis.vertical,
                    controller: pageController,
                    children: desktopScreens
                ),
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
                            duration: Duration(milliseconds: 100),
                            style: TextStyle(
                                fontSize: navState[0] ? context.read<UIProviders>().menuTextF : context.read<UIProviders>().menuTextUF,
                                color: navState[0] ? Color(0xff2EBBCE) : Color(0xffc8c8c8)
                            ),
                            child: Text(
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
                            duration: Duration(milliseconds: 100),
                            style: TextStyle(
                                fontSize: navState[1] ? context.read<UIProviders>().menuTextF : context.read<UIProviders>().menuTextUF,
                                color: navState[1] ? Color(0xff2EBBCE) : Color(0xffc8c8c8)
                            ),
                            child: Text(
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
                            duration: Duration(milliseconds: 100),
                            style: TextStyle(
                                fontSize: navState[2] ? context.read<UIProviders>().menuTextF : context.read<UIProviders>().menuTextUF,
                                color: navState[2] ? Color(0xff2EBBCE) : Color(0xffc8c8c8)
                            ),
                            child: Text(
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
                            duration: Duration(milliseconds: 100),
                            style: TextStyle(
                                fontSize: navState[3] ? context.read<UIProviders>().menuTextF : context.read<UIProviders>().menuTextUF,
                                color: navState[3] ? Color(0xff2EBBCE) : Color(0xffc8c8c8)
                            ),
                            child: Text(
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
