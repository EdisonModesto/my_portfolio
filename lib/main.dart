import 'package:flutter/material.dart';
import 'package:portfolio/UI/home/homeDesktop.dart';

void main() {
  runApp(const MyApp());
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            homeUI(),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 500,
                width: 250,
                margin: EdgeInsets.only(right: 100),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        "About Me",
                        style: TextStyle(
                          fontSize: 36,
                          color: Color(0xffc8c8c8)
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                          "My Skills",
                        style: TextStyle(
                            fontSize: 36,
                            color: Color(0xffc8c8c8)
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                          "My Projects",
                        style: TextStyle(
                            fontSize: 36,
                            color: Color(0xffc8c8c8)
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                          "Experience",
                        style: TextStyle(
                            fontSize: 36,
                            color: Color(0xffc8c8c8)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      )
    );
  }
}
