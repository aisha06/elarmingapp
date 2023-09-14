



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

                // height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width/2,
                  child: Row(
                    children: [
                      Image.asset("assets/images/livepic.png",fit:BoxFit.fitWidth,),

                Container(

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
                            children: [
                              CircleAvatar(
                                radius: 14.0,
                                child: Text("Rs"),
                              ),
                              Text("60000"),
                             const SizedBox(width: 30.0,),
                              Container(color: Colors.grey[500],
                                child: const Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Text("Live",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                                    ,),
                                ),)

                            ],
                          ),
                          const  SizedBox(width: 5.0,),


                        ],
                      ),
                      IconButton(
                            onPressed: () {},
                        constraints: BoxConstraints(),
                        padding: EdgeInsets.zero,
                            icon: const Icon(Icons.favorite_border_outlined),
                            color: Colors.red,
                          )
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