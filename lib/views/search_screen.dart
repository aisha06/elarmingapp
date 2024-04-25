import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  horizontal: 20,
                  vertical: 10,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 8),
                        Icon(Icons.search),
                        SizedBox(width: 8),
                        Container(
                          height: 44, // Adjust the height as needed
                          width: 1.5, // Width of the vertical divider
                          color: Colors.black, // Color of the vertical divider
                        ),
                      ],
                    ),
                    filled: true,
                    fillColor: Color(0xffD9D9D9),
                    hintText: "     Search ",
                    hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xffDCDCDC)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xffDCDCDC)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xffDCDCDC)),
                    ),
                  ),
                ),
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
