// import 'package:elearningapp_demo/views/live_Screen.dart';
// import 'package:elearningapp_demo/views/live_new_ui.dart';
// import 'package:elearningapp_demo/views/sharelistView.dart';
// import 'package:elearningapp_demo/views/wishlist_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class Grridviewpage extends StatefulWidget {
//   const Grridviewpage({super.key});

//   @override
//   State<Grridviewpage> createState() => _GrridviewpageState();
// }

// class _GrridviewpageState extends State<Grridviewpage> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => LiveScreen()),
//         );
//       },
//       child: GridView.builder(
//         physics: const NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: .6,
//           crossAxisSpacing: 12.0,
//           mainAxisSpacing: 12.0,
//           mainAxisExtent: 200,
//         ),
//         itemCount: 8,
//         itemBuilder: (context, index) {
//           return Container(
//               child: GestureDetector(
//             onTap: () {
//               // _showBottomSheetDeposit(context);
//             },
//             child: Container(
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFD9D9D9),
//                   border: Border.all(
//                     width: 1,
//                     color: const Color(0xFFD9D9D9),
//                   ),
//                   borderRadius: BorderRadius.circular(2),
//                 ),
//                 child: Column(
//                   children: [
//                     Stack(
//                       children: [
//                         SizedBox(
//                           width: MediaQuery.of(context).size.width,
//                           height: 90,
//                           child: ClipRect(
//                             child: Image.asset(
//                               'assets/images/livepic.png',
//                               fit: BoxFit.fill,
//                               filterQuality: FilterQuality.high,
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                             child: Row(
//                           children: [
//                             Spacer(),
//                             Column(
//                               children: [
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) =>
//                                               WishlistScreen()),
//                                     );
//                                   },
//                                   child: Container(
//                                     child: RatingBar.builder(
//                                       initialRating: 0,
//                                       minRating: 0,
//                                       updateOnDrag: false,
//                                       glow: false,
//                                       itemCount: 1,
//                                       itemSize: 25,
//                                       allowHalfRating: false,
//                                       itemBuilder: (context, _) => Icon(
//                                         Icons.favorite,
//                                         color: Colors.red,
//                                       ),
//                                       onRatingUpdate: (rating) {
//                                         // Handle the rating update here
//                                       },
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) =>
//                                               SharelistView()),
//                                     );
//                                   },
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xFFD9D9D9),
//                                       border: Border.all(
//                                         width: 1,
//                                         color: const Color(0xFFD9D9D9),
//                                       ),
//                                       borderRadius: BorderRadius.circular(5),
//                                     ),
//                                     child: Image.asset(
//                                       'assets/images/share.png',
//                                       fit: BoxFit.fill,
//                                       filterQuality: FilterQuality.high,
//                                     ),
//                                     width: 20,
//                                     height: 20,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               width: 10,
//                             )
//                           ],
//                         )),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         height: 25,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(2),
//                           color: Color(0xff91e8b2),
//                         ),
//                         child: Center(
//                           child: Text("Machine Learning Bootcamp",
//                               style: TextStyle(
//                                 fontSize: 10,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black,
//                               )),
//                         ),
//                       ),
//                     ),
//                     Text(
//                       "Krish Naik",
//                       style: TextStyle(
//                           fontWeight: FontWeight.w600, color: Colors.black),
//                     ),
//                     // SizedBox(
//                     //   height: 10,
//                     // ),
//                     Row(
//                       children: [
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.green,
//                             shape: BoxShape.circle,
//                           ),
//                           padding: const EdgeInsets.all(4),
//                           // color:Colors.green,
//                           child: Text(
//                             "Rs",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.black),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         Text(
//                           "60,000",
//                           style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black),
//                         ),
//                         Spacer(),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => LiveNewScreen()),
//                             );
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.all(5.0),
//                             decoration: const BoxDecoration(
//                               gradient: LinearGradient(
//                                 colors: [
//                                   Color(0xff575756),
//                                   Color(0xff575756)
//                                 ], // Replace with your desired colors
//                                 begin: Alignment.topCenter,
//                                 end: Alignment.bottomCenter,
//                                 stops: [
//                                   0.5,
//                                   0.5
//                                 ], // This splits the gradient in half
//                               ),
//                             ),
//                             child: const Text(
//                               "Live",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                       ],
//                     ),
//                   ],
//                 )),
//           ));
//         },
//       ),
//     );
//   }
// }
