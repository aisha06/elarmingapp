import 'package:elearningapp_demo/views/liveCousreView.dart';
import 'package:flutter/material.dart';

class listprogramView extends StatelessWidget {
  const listprogramView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 200,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LivecourseView()),
          );

        },
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, position) {
            return Container(
              margin: EdgeInsets.only(right: 10.0),
              width: MediaQuery.of(context).size.width/2.15,
              color:const  Color(0xFFD9D9D9),
              child: Column(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width/2.15,
                      height: 85,
                      child: ClipRect(
                          child: Image.asset('assets/images/livepic.png',
                            fit: BoxFit.fill,filterQuality: FilterQuality.high,)
                      )
                  ),
                  Card(elevation: 6,
                    child: Container(
                        padding: const EdgeInsets.all(5.0),
                        color:const Color(0xFF91E8B2),

                        child:const Text("Machine learning Bootcamp",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  const SizedBox(height: 5.0,),
                  const Text("krish Naik"),
                  const SizedBox(height: 5.0,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(4),
                                // color:Colors.green,
                                child: Text("Rs",style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                            ),

                            Text(
                              "60,000",
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                            padding: const EdgeInsets.all(5.0),
                            color:Colors.grey[400],

                            child:const Text("Live",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}