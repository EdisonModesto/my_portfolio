import 'package:flutter/material.dart';

import '../projects/projectClass.dart';

class expDialog extends StatefulWidget {
  const expDialog({required this.title,required this.desc, required this.logo, Key? key}) : super(key: key);

  final logo;
  final title;
  final desc;

  @override
  State<expDialog> createState() => _expDialogState();
}

class _expDialogState extends State<expDialog> {
  double width = 0;
  double height = 0;
  double titleSize = 20;
  double descSize = 15;
  double toolRadius = 20;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){

        if(constraints.maxWidth > 801){
          width = 350;
          titleSize = 22;
          descSize = 18;
          toolRadius = 15;
        }

        if(constraints.maxWidth <= 800){
          width = constraints.maxWidth * 0.8;
          titleSize = 20;
          descSize = 14;
          toolRadius = 15;
        }

        return Center(
          child: SizedBox(
            width: width,
            height: 450,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Image.asset(widget.logo),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            color: Color(0xff313131),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: titleSize,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  widget.desc,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: descSize,
                                      fontWeight: FontWeight.normal
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
            ),
          ),
        );
      },
    );
  }
}
