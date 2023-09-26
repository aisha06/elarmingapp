import 'package:flutter/material.dart';

class TextfiledConatiner extends StatelessWidget {
  String labeltext;
  String hinttext;
  TextInputType keybordtype;
  final String? Function(String?)? valiDator;
  TextEditingController Controllerctr;
  TextfiledConatiner({
    super.key,
    required this.labeltext,
    required this.hinttext,
    required this.valiDator,
    required this.Controllerctr,required this.keybordtype
  });


  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
        child: TextFormField(
          keyboardType: keybordtype,
          controller: Controllerctr,
          // obscureText: true,
          decoration:  InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(width: 4.0),
                borderRadius: BorderRadius.circular(10), // Set the BorderRadius here
              ),

              labelText: labeltext,
              hintText: hinttext),
          validator: valiDator,
          //Function to check validation
        ),
      ),
    );
  }
}