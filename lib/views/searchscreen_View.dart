import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchscreenView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: const Color(0xFFDAFFF2),
  body: Container(
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
          // controller: _searchController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search for anything',
            // Add a clear button to the search bar
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.mic,
              ),
              onPressed: () {},
              // onPressed: () => _searchController.clear(),
            ),
            // Add a search icon or button to the search bar
            prefixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Perform the search here
              },
            ),
          ),
        ),
      ),
    ),
  ),
   );
  }

}