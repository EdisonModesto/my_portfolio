import 'package:flutter/material.dart';
import 'package:portfolio/providers/UI%20Providers.dart';
import 'package:provider/provider.dart';

class expCardDesk extends StatelessWidget {
  const expCardDesk({this.logo, this.title, this.description, Key? key}) : super(key: key);

  final logo;
  final title;
  final description;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: SizedBox(
        width: context.watch<UIProviders>().expCardWidth,
        height: context.watch<UIProviders>().expCardheight,
        child: Column(
          children: [
            const Expanded(
              flex: 55,
              child: Center(
                child: Icon(Icons.image),
              ),
            ),
            Expanded(
              flex: 45,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                decoration: const BoxDecoration(
                    color: Color(0xff313131),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: context.watch<UIProviders>().projTitle,
                          color: Colors.white
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          fontSize:  context.watch<UIProviders>().projSub,
                          color: Color(0xffb0b0b0)
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
