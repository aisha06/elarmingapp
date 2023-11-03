import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component/textfiledContainer.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();

  String _searchQuery = "5";

  List<DocumentSnapshot> _searchResults = [];

  void _performSearch() async {
    final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("items")
        .where("itemName", isEqualTo: _searchQuery)
        .get();

    setState(() {
      _searchResults = querySnapshot.docs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAFFF2),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30.0,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Navigate back when the back button is pressed
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Enter a Search here",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                  ),
                )),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                final item = _searchResults[index];
                return ListTile(
                  title: Text(item["itemName"]),
                  // Add more fields as needed
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
