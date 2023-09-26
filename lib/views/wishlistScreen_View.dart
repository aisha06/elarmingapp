import 'package:flutter/material.dart';

class WishlistscreenView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFDAFFF2),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount:8,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
               height:80,

                  child: Row(
                    children: [
                      Image.asset("assets/images/livepic.png",fit:BoxFit.fitWidth,),

                Container(
                  // width:MediaQuery.of(context).size.width*4,
                   height:MediaQuery.of(context).size.height*0.1,

                  color:const  Color(0xFFD9D9D9),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Card(elevation: 8,
                            child: Container(
                                          padding: const EdgeInsets.all(5.0),
                                          color:const Color(0xFF91E8B2),
                                          child: Text("Machine learning Bootcamp",
                                            style: const TextStyle(fontWeight: FontWeight.bold),),
                                        ),
                          ),
                          const SizedBox(height: 8.0,),
                          Text("Kartik naik",
                                          style: TextStyle(fontWeight: FontWeight.bold,
                                              color: Colors.black),),
                         const SizedBox(height: 8.0,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                             const  CircleAvatar(
                               backgroundColor: Color(0xFF91E8B2),
                                radius: 10.0,
                                child: Text("Rs",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold,color: Colors.black),),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5.0),
                                  child: const Text("60000")),


                            ],
                          ),


                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            margin:const  EdgeInsets.only(left: 10.0,bottom: 20.0,top: 10),
                            child: IconButton(
                                  onPressed: () {},
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.zero,
                                  icon: const Icon(Icons.favorite_border_outlined),
                                  color: Colors.red,
                                ),
                          ),
                          Container(
                            color: Colors.grey[500],
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text("Live",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)
                              ),
                            ),)
                        ],
                      ),



                        ],
                  ),
                ),

                    ],
                  ), ),
            );
          },
        )
    );

  }

}