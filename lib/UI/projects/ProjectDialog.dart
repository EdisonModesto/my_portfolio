import 'package:flutter/material.dart';
import 'package:portfolio/UI/projects/projectClass.dart';
import 'package:portfolio/providers/UI%20Providers.dart';
import 'package:provider/provider.dart';


class ProjectDialog extends StatefulWidget {
  const ProjectDialog({required this.title,required this.desc, required this.logo, required this.tools, Key? key}) : super(key: key);
  
  final logo;
  final title;
  final desc;
  final tools;
  
  @override
  State<ProjectDialog> createState() => _ProjectDialogState();
}

class _ProjectDialogState extends State<ProjectDialog> {

  double width = 0;
  double height = 0;
  double titleSize = 20;
  double descSize = 15;
  double toolRadius = 20;

  var personal = personalClass();
  var client = clientClass();


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){

        if(constraints.maxWidth > 801){
          width = 500;
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
              height: 400,
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
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: descSize,
                                      fontWeight: FontWeight.normal
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tools Used:",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: titleSize,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),

                                  SizedBox(
                                    width: width,
                                    height: 30,
                                    child: ListView.separated(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index){
                                        return CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: toolRadius,
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Image.asset(widget.tools[index]),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index){
                                        return SizedBox(width: 10,);
                                      },
                                      itemCount: widget.tools.length,
                                    ),
                                  )
                                ],
                              )
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
