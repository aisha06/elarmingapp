import 'dart:async';
import 'package:elearningapp_demo/firebase_options.dart';
import 'package:elearningapp_demo/views/loginView.dart';
import 'package:elearningapp_demo/views/onboardscreenView.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{

    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,);
      runApp(
      const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:  Color(0xFF5BA084), // Set the primary color here
      ),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      home:const Splashscreen(),
    );
  }
}
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}
class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 7),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                 const    OnboardscreenView()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFDAFFF2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius:
                BorderRadius.circular(50), // Adjust the radius as needed
              ),
                height: 120,

        child:Image.asset('assets/images/OBJECTS.png',
              height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
            ),
          const SizedBox(height: 20.0,),
            Container(
              height: 18.0,
              child: Image.asset('assets/images/E-education.png',
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}







