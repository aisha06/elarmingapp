import 'package:elearningapp_demo/views/payment_type_View.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAFFF2),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 50.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 30.0,
              ),
              onPressed: () {
                // Navigate back when the back button is pressed
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        Container(
          height: 140.0,
          child: Image.asset("assets/images/video_image.png"),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Machine learning Bootcamp",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
            margin: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Text(
              "Most popular course on DSA trusted by over 1,00,000+ students! Built with years of experience by industry experts the course gives you a complete package of video lectures, practice problems, quizzes, discussion forums, and contests. Start Today!",
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            )),
        const SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "+  Add New Method",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Bill Summary",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              )),
        ),
        Expanded(child: ListView_list2(context)),
        Container(
          margin: EdgeInsets.only(bottom: 40.0),
          child: Card(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentypeView()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF91E8B2),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                child: Text(
                  "Payment",
                  style: TextStyle(color: Colors.black),
                )),
          ),
        ),
      ]),
    );
  }
}

ListView_list2(BuildContext buildContext) {
  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: 3,
    itemBuilder: (BuildContext context, int index) {
      List itemlist = ["Price", "Discount", "Total"];

      return ListTile(
          title: Text(
            itemlist[index],
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          // leading: Icon(Icons.calendar_month,color: Colors.blue,),
          subtitle: Text("Subtitle of list item"),
          trailing: Text("60,000"));
    },
  );
}
