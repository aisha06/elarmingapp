import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';

class NotificationscreenView extends StatefulWidget {
  NotificationscreenView({Key? key}) : super(key: key);

  @override
  _NotificationscreenViewState createState() => _NotificationscreenViewState();
}

class _NotificationscreenViewState extends State<NotificationscreenView> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [],
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Row(
          children: [
            Spacer(),
            Text(
              "Notification",
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            GFToggle(
              onChanged: (val) {},
              value: true,
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFDAFFF2),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  subtitle: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  title: Text(
                    "Machine Learning Bootcamp",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            );
          }),
    );
  }
}
