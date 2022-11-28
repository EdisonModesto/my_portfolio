import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/UI/projects/projCardDesk.dart';
import 'package:portfolio/UI/projects/projectClass.dart';
import 'package:provider/provider.dart';

import '../../providers/UI Providers.dart';

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
      padding: EdgeInsets.all(context.watch<UIProviders>().screenPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
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
                "Personal Projects",
                style: TextStyle(
                  fontSize: context.watch<UIProviders>().screenTitles,
                  color: Color(0xff2EBBCE),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 700,
                height: context.watch<UIProviders>().projCardSize,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.trackpad,
                    PointerDeviceKind.stylus,
                    PointerDeviceKind.unknown,
                    PointerDeviceKind.touch
                  },
                  scrollbars: true
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: personal.title.length,
                    itemBuilder: (context, index){
                      return projCardDesk(title: personal.title[index], description: personal.description[index], logo: personal.logo[index], tools: personal.tools[index],);
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
              Text(
                "Client Projects",
                style: TextStyle(
                  fontSize: context.watch<UIProviders>().screenTitles,
                  color: Color(0xff2EBBCE),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  width: 700,
                  height: context.watch<UIProviders>().projCardSize,
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.trackpad,
                      PointerDeviceKind.stylus,
                      PointerDeviceKind.unknown,
                      PointerDeviceKind.touch
                    },
                        scrollbars: true
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: client.title.length,
                      itemBuilder: (context, index){
                        return projCardDesk(title: client.title[index], description: client.description[index], logo: client.logo[index], tools: client.tools[index],);
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
