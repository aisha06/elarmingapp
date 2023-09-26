import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchscreenView extends StatefulWidget{
  @override
  State<SearchscreenView> createState() => _SearchscreenViewState();
}

class _SearchscreenViewState extends State<SearchscreenView> {
  TextEditingController _searchController=TextEditingController();

  String _searchQuery = "";

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
        margin: const EdgeInsets.only(bottom: 20.0, left: 20, right: 20.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.black, // Border color
                  width: 1.0 // Border width
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
               controller: _searchController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search for anything',
                // Add a clear button to the search bar
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.clear,
                  ),
                  // onPressed: () {},
                  onPressed: () => _searchController.clear(),
                ),
                // Add a search icon or button to the search bar
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _performSearch,
                ),
              ),
            ),
          ),
        ),
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