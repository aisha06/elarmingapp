import 'package:flutter/material.dart';

class PaymentypeView extends StatelessWidget{
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:   Column(
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
        Container(margin:const  EdgeInsets.only(left: 20.0),
          child: Align(alignment: Alignment.topLeft,
              child: Text("+  Add New Method",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),)),
        ),
     const SizedBox(height: 20.0,),
     Expanded ( child:Payment_list2(context)),
        Container(
          margin:const  EdgeInsets.only(bottom: 40.0),
          child: Card(
            child: ElevatedButton(onPressed: (){
              showGeneralDialog(
                  barrierColor: Colors.black.withOpacity(0.5),
                  transitionBuilder: (context, a1, a2, widget) {
                    return Transform.scale(
                      scale: a1.value,
                      child: Opacity(
                        opacity: a1.value,
                        child: AlertDialog(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0)),
                          title:Image.asset("assets/images/paymentdone.png",
                            colorBlendMode: BlendMode.dstATop,
                              scale:0.6,
                              // color: Color.fromARGB(255, 15, 147, 59),

                        ),
                          content: Text('Thanks For Your\n Payment Sucessfully',style:TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                    );
                  },
                  transitionDuration: Duration(milliseconds: 200),
                  barrierDismissible: true,
                  barrierLabel: '',
                  context: context,
                  pageBuilder: (context, animation1, animation2) {
                    return Text("aisha");
                  });

            },
                style: ElevatedButton.styleFrom(
                    primary:  const Color(0xFF91E8B2)
                    ,
                    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                child: Text("Payment",
                  style: TextStyle(color: Colors.black),)),
          ),
        ),
      ],
    ),
    );
  }

}
Payment_list2(BuildContext
buildContext) {
  List itemlist =["*******1234","Phone pe ","Paytm","Google pay","*******!234","Net Banking","NEFT"];

  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount:itemlist.length,
    itemBuilder: (BuildContext context, int index) {
      // List itemlist =["*******1234","Phone pe ","Paytm","Google pay"];

      return Container(
        margin:const EdgeInsets.only(bottom: 15.0,left: 20.0,right: 20.0),
        decoration:  BoxDecoration(
            border: Border.all(
              color: Colors.black, // Specify the border color
              width: 2.0,         // Specify the border width
            ),
            borderRadius: BorderRadius.circular(5)),

        child: ListTile(
            title: Text(itemlist[index],
              style: TextStyle(fontWeight: FontWeight.bold),),
            // leading: Icon(Icons.calendar_month,color: Colors.blue,),
            // subtitle: Text("Subtitle of list item"),
            // trailing: Checkbox(
            //   value:null,
            //   onChanged: () {
            //     // setState(() {
            //     //  value = value2;
            //     // });
            //   },
            // ),


        ),

      );
    },
  );
}
