import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Abouteducationview extends StatelessWidget{
  const Abouteducationview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(


        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Text("About E-Education",style: TextStyle(color: Colors.black),),
      ),
      backgroundColor: const Color(0xFFDAFFF2),
      body: Container(
        margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
        child: Text(''' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book   '''),
      ),

    );
  }

}
