import 'package:elearningapp_demo/views/liveCousreView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Grridviewpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // return  GridView.builder(
    //   padding: EdgeInsets.symmetric(horizontal: 16),
    //   itemCount: 12,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2,
    //       childAspectRatio: 1,
    //       crossAxisSpacing: 7,
    //       mainAxisSpacing: 11),
    //   itemBuilder: (context, index) {
    //     return Container(
    //       width: 158,
    //       height: 160,
    //       decoration: BoxDecoration(
    //         color: Color(0xFFD9D9D9),
    //         borderRadius: BorderRadius.only(
    //           topLeft: Radius.circular(2),
    //           topRight: Radius.circular(2),
    //         ),
    //       ),
    //       child: Column(
    //         children: [
    //           ClipRRect(
    //             borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(2),
    //               topRight: Radius.circular(2),
    //             ),
    //             child: Image.network(
    //                 'https://media0.giphy.com/media/l0NwGpoOVLTAyUJSo/200w.webp?cid=ecf05e470p13dsun7yanclqhjqm2iccddzsgly9q5vljfu2s&ep=v1_gifs_search&rid=200w.webp&ct=g'),
    //           ),
    //           SizedBox(height: 7),
    //           Container(
    //             width: 120,
    //             height: 18,
    //             alignment: Alignment.center,
    //             decoration: BoxDecoration(
    //               color: Color(0xFF91E8B2),
    //               borderRadius: BorderRadius.circular(2),
    //               boxShadow: [
    //                 BoxShadow(
    //                   color: Color(0x3F000000),
    //                   blurRadius: 4,
    //                   offset: Offset(0, 4),
    //                   spreadRadius: 0,
    //                 )
    //               ],
    //             ),
    //             child: Text(
    //               'Machine Learning Bootcamp',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 7,
    //                 fontFamily: 'Inknut Antiqua',
    //                 fontWeight: FontWeight.w600,
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     );
    //   },
    // );

   return GridView.count(
     padding: EdgeInsets.symmetric(horizontal: 10),
     crossAxisCount: 2,
     crossAxisSpacing: 10.0,
     mainAxisSpacing: 10.0,
     shrinkWrap: true,
     children: List.generate(20, (index) {
       return GestureDetector(onTap: (){
         // Get.to(LivecourseView());
         Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => LivecourseView()),
         );
       },
         child: Container(
           color:const  Color(0xFFD9D9D9),
           child: Column(
             children: [
               SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 85,
                      child: ClipRect(
                          child: Image.asset('assets/images/livepic.png',
                            fit: BoxFit.fill,))),
               Card(elevation: 6,
                 child: Container(
                     padding: const EdgeInsets.all(5.0),
                     color:const Color(0xFF91E8B2),

                     child:const Text("Machine learning Bootcamp",
                       style: TextStyle(fontWeight: FontWeight.bold),
                     )),
               ),
               const SizedBox(height: 5,),
               Text("krish Naik",
               style: TextStyle(fontWeight: FontWeight.bold),),
               const SizedBox(height: 5,),
               Row(
                 children: [
                   Text(
                     "60,000",
                     style: TextStyle(fontSize: 16),
                   ),

                Container(margin: const EdgeInsets.only(left: 10.0),

                    color: Colors.grey,
                    child:const  Text("Live"))
                 ],
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