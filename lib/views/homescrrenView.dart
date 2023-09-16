import 'package:elearningapp_demo/component/listviewprograms.dart';
import 'package:elearningapp_demo/views/affordableprogramView..dart';
import 'package:elearningapp_demo/views/communityprogramView.dart';
import 'package:elearningapp_demo/views/liveprogramView.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {Homescreen({

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
        return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20.0, left: 20, right: 20.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black, // Border color
                      width: 1.0 // Border width
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  // controller: _searchController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for anything',
                    // Add a clear button to the search bar
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.mic,
                      ),
                      onPressed: () {},
                      // onPressed: () => _searchController.clear(),
                    ),
                    // Add a search icon or button to the search bar
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        // Perform the search here
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),

          Row(
            children: [
              Container(
                margin:const  EdgeInsets.only(left: 10.0),
                width: 180,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF58605C), Color(0xFF5BA084)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child:const Column(
                  children:  [
                    Text("A Scale as big as your dreams",
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0)
                    ),
                  ],
                ),

              ),
              const  SizedBox(width: 5.0,),
              Container(
                width: 210,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF58605C), Color(0xFF5BA084)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  children: [
                    Text("A Sale as big as your Dreams",
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0)
                    ),

                  ],
                ),
              ),

            ],
          ),
          const SizedBox(height: 10.0,),
          Container(
            height: 140,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, position) {
                return Card(

                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF58605C), Color(0xFF5BA084)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:5.0,bottom:5.0,right:5.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/classmates 1 (1).png",
                            height: 50.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height:20.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Enrolled Students",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height:10.0,
                              ),

                              Text("8000+",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Text(
                  "Live Program ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                const Spacer(),
                GestureDetector(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LiveprogramView()),
                  );
                },
                  child: Card(elevation: 10.0,
                    child: Container(
                        padding: const EdgeInsets.all(5.0),
                        color:const  Color(0xFF91E8B2),

                        child:const Text("View More",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Get your program with live'Instructor lead'learning",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                )),
          ),
          const SizedBox(height: 10,),
          listprogramView(),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Text(
                  "Affordable Program ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AffordableprogramView()),
                    );
                  },
                  child: Card(elevation: 10.0,
                    child: Container(
                        padding: const EdgeInsets.all(5.0),
                        color:const  Color(0xFF91E8B2),

                        child:const Text("View More",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Get your program with live'Instructor lead'learning",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                )),
          ),
          const SizedBox(height: 10,),
          const  listprogramView(),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                const  Text(
                  "Community Program ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                const Spacer(),
                GestureDetector(onTap: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CommunityprogramView()),
                  );
                },
                  child: Card(elevation: 10.0,
                    child: Container(
                        padding: const EdgeInsets.all(5.0),
                        color:const  Color(0xFF91E8B2),

                        child:const Text("View More",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            child:const  Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Get your program with live'Instructor lead'learning",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                )),
          ),
          const SizedBox(height: 10,),
          const   listprogramView(),

        ],
      ),
    );
  }
}
//