import 'package:flutter/material.dart';

class MyprofileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      // backgroundColor: const Color(0xFFDAFFF2),
      body: Column(
        children: [
          Card(
            elevation: 10,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0),
            color: const Color(0xFFEFEFEF),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Stack(children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/ani.jpg"),
                      ),
                      Align(
                        widthFactor: 2,
                        heightFactor: 4,
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF5BA084),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: GestureDetector(
                                child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           EditProfile()),
                                      // );
                                      // // Get.to(EditProfile());
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10.0),
                                      child: const Text(
                                        "Edit",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ))),
                          ),
                        ),
                      )
                    ]),
                  ),
                  Column(
                    children: [
                      Text(
                        "Jyoti Prajapati",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Color(0xFF0000000),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Enrollment No:12343334",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.0,
                          color: Color(0xFF0000000),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Card(
                elevation: 10,
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 40.0, bottom: 20.0),
                color: const Color(0xFFEFEFEF),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: profile_list2(context))),
          ),
        ],
      ),
    );
  }
}

profile_list2(BuildContext buildContext) {
  List list = [];

  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      List itemlist2 = ["Name", "Enrollment", "Email", "Address", "contact"];
      List itemlist3 = [
        "Vaishnavi Bansal",
        "A1833HREGRJ74I2",
        "vaishavi@gmail.com",
        "Sector 721 ",
        "98765321"
      ];

      return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => list[index]));
        },
        child: ListTile(
          title: Text(
            itemlist2[index],
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
              color: Color(0xFF0000000),
            ),
          ),
          trailing: Text(
            itemlist3[index],
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15.0,
              color: Color(0xFF0000000),
            ),
          ),
        ),
      );
    },
  );
}
