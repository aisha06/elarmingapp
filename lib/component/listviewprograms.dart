import 'package:flutter/material.dart';

class listprogramView extends StatelessWidget {
  const listprogramView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 200,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              color:const  Color(0xFFD9D9D9),
              child: Column(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width/2,
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
                        )),
                  ),
                  const SizedBox(height: 5.0,),
                  const Text("krish Naik"),
                  const SizedBox(height: 5.0,),
                  Container(

                    child: Row(
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

                       const  SizedBox(width:80.0 ,),
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
            ),
          );
        },
      ),
    );
  }
}