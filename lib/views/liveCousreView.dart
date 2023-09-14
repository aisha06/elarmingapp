import 'package:elearningapp_demo/views/payment_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LivecourseView extends StatelessWidget{
  const LivecourseView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: const Color(0xFFDAFFF2),
    body:  Column(
      children: [
        Container(
          margin:const  EdgeInsets.only(top: 50.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon:const Icon(Icons.arrow_back,
                size: 30.0,),
              onPressed: () {
                // Navigate back when the back button is pressed
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        Container(

          height: 140.0,
          child: Image.asset("assets/images/video_image.png"
          ),
        ),
        const SizedBox(height: 20.0,),
        Text("Machine learning Bootcamp",
        style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),),
        const SizedBox(height: 10.0,),
        Container(margin: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: Text("Most popular course on DSA trusted by over 1,00,000+ students! Built with years of experience by industry experts the course gives you a complete package of video lectures, practice problems, quizzes, discussion forums, and contests. Start Today!",
            style: TextStyle(fontSize: 16.0),)),
        const SizedBox(height: 10,),
        Container(
          margin:const  EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Container(
                decoration:const  BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                // color: Colors.green,
                padding:const  EdgeInsets.all(8),
                child: Text("Rs",
                style: TextStyle(fontWeight:FontWeight.bold,
                    fontSize: 18.0),),

              ),
              const SizedBox(width: 15.0,),
              Text("60,000",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20.0),),
             const  SizedBox(width: 15.0,),
              Text("Rs 50,000",
                style: TextStyle(
                    fontSize: 16.0),), SizedBox(width: 15.0,),
              Text("20% Off",
                style: TextStyle(
                    fontSize: 16.0),),
            ],
          ),

        ),
        const SizedBox(height: 10.0,),
        Container(margin:const  EdgeInsets.only(left: 20.0),
          child: Align(alignment: Alignment.topLeft,
            child: Text("12 hours left at this price! Add to Cart",
            style: TextStyle(color: Colors.red),),
          ),
        ),
       const  SizedBox(height: 20.0,),
        Card(
          child: ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentView()),
            );

          },
              style: ElevatedButton.styleFrom(
                  primary:  const Color(0xFF91E8B2)
                  ,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              child: Text("Enroll Now",
                style: TextStyle(color: Colors.black),)),
        ),
     const  SizedBox(height: 10.0,),
        Container(
          margin: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Class Details ",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
          ),
        ),
       Expanded( child:ListView_list(context)),
        Container(margin:const  EdgeInsets.only(left: 20.0),
          child: Align(alignment: Alignment.topLeft,
            child: Text("Course features",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26.0),),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Icon(Icons.check),
              Text("Job Guarantee Program",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
          ]

    ),
   );
  }
  
}
ListView_list(BuildContext buildContext) {


  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount:3,
    itemBuilder: (BuildContext context, int index) {
      // String itemTitle = "List Item ${list[index]}";

      return ListTile(
          title: Text("Doubt session: ",
          style: TextStyle(fontWeight: FontWeight.bold),),
          leading: Icon(Icons.calendar_month,color: Colors.blue,),
          subtitle: Text("Subtitle of list item"),
          // trailing: Text("17:00")


      );
    },
  );
}
