import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/UI/projects/projCardDesk.dart';
import 'package:portfolio/UI/projects/projectClass.dart';

class projectsDesktop extends StatefulWidget {
  const projectsDesktop({Key? key}) : super(key: key);

  @override
  State<projectsDesktop> createState() => _projectsDesktopState();
}

class _projectsDesktopState extends State<projectsDesktop> {

  var personal = personalClass();
  var client = clientClass();

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
            "My Projects",
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
                "Personal Projects",
                style: TextStyle(
                  fontSize: 28.0,
                  color: Color(0xff2EBBCE),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 700,
                height: 200,
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
                    itemCount: personal.title.length,
                    itemBuilder: (context, index){
                      return projCardDesk(title: personal.title[index], description: personal.description[index],);
                    }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 20,
                      );
                    },
                  ),
                )
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Client Projects",
                style: TextStyle(
                  fontSize: 28.0,
                  color: Color(0xff2EBBCE),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  width: 700,
                  height: 200,
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
                      itemCount: client.title.length,
                      itemBuilder: (context, index){
                        return projCardDesk(title: client.title[index], description: client.description[index],);
                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 20,
                      );
                    },
                    ),
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}
