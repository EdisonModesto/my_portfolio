import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/UI/experience/expCardDesk.dart';
import 'package:portfolio/UI/experience/experienceClass.dart';

import '../projects/projCardDesk.dart';

class experienceDesktop extends StatefulWidget {
  const experienceDesktop({Key? key}) : super(key: key);

  @override
  State<experienceDesktop> createState() => _experienceDesktopState();
}

class _experienceDesktopState extends State<experienceDesktop> {

  var experience = experienceClass();

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
            "Experience",
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 361,
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                  PointerDeviceKind.mouse,
                  PointerDeviceKind.trackpad,
                  PointerDeviceKind.stylus,
                  PointerDeviceKind.unknown
                },
                    scrollbars: true
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: experience.title.length,
                  itemBuilder: (context, index){
                    return expCardDesk(title: experience.title[index], description: experience.description[index],);
                  }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 100,
                  );
                },
                ),
              )
          ),
        ],
      ),
    );
  }
}