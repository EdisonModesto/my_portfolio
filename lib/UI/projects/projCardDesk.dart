import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/providers/UI%20Providers.dart';
import 'package:provider/provider.dart';

class projCardDesk extends StatelessWidget {
  const projCardDesk({this.logo, this.title, this.description, Key? key}) : super(key: key);
  final logo;
  final title;
  final description;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: SizedBox(
        width: context.watch<UIProviders>().projCardSize,
        height: context.watch<UIProviders>().projCardSize,
        child: Column(
          children: [
            Expanded(
              flex: 55,
              child: Center(
                child: Icon(Icons.image),
              ),
            ),
            Expanded(
              flex: 45,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                decoration: BoxDecoration(
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
                    AutoSizeText(
                      title,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: context.watch<UIProviders>().projTitle,
                        color: Colors.white
                      ),
                      minFontSize: 1,
                    ),
                    AutoSizeText(
                      description,
                      maxLines: 2,
                      minFontSize: 1,
                      style: TextStyle(
                          fontSize: context.watch<UIProviders>().projSub,
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
