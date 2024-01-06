import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all(width: 2.0, color: Colors.black)
      // ),
      
      // child: const Row(
        
      // ),

        padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      child: Stack(
        children: [
          TextField(
            cursorColor: const Color(0xFFFF8F00),
            decoration: InputDecoration(
              fillColor: const Color.fromARGB(255, 250, 245, 227),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: Colors.red,
                  // color: Color(0xFFFF8F00),
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 2,
              ),
              prefixIcon: const Icon(
                Icons.search_outlined,
                size: 30,
              ),
              hintText: "Search product...",
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.7),
              ),
            ),
          ),
          // Positioned(
          //   bottom: 10,
          //   right: 12,
          //   child: Container(
          //     padding: const EdgeInsets.all(5),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       color:  Colors.red,
          //     ),
          //     child: const Icon(
          //       Icons.mic_outlined,
          //       color: Colors.white,
          //       size: 25,
          //     ),
          //   ),
          // )
        ],
      ),
    );

  }
}