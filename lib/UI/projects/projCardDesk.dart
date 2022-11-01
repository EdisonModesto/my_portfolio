import 'package:flutter/material.dart';

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
        width: 200,
        height: 200,
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
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          fontSize: 12,
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
