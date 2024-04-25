import 'package:flutter/material.dart';

class TextFormFieldWedget extends StatelessWidget {
  const TextFormFieldWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 12),
              Container(
                height: 44, // Adjust the height as needed
                width: 1.5, // Width of the vertical divider
                color: Colors.black,
              ),
              Icon(Icons.mic_rounded)
              //Image.asset("assets/images/microphone.png"),
            ],
          ),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 5),
              Icon(Icons.search),
              //Image.asset("assets/images/search.png"),
              SizedBox(width: 10),
              Container(
                height: 44,
                width: 1.5,
                color: Colors.black,
              ),
            ],
          ),
          filled: true,
          fillColor: Color(0xffD9D9D9),
          hintText: "Search ",
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
          contentPadding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Color(0xffDCDCDC)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Color(0xffDCDCDC)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Color(0xffDCDCDC)),
          ),
        ),
      ),
    );
  }
}
