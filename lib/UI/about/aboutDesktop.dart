import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: Column(
        children: [

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Center(
              child: SizedBox(
                height: 475,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

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
