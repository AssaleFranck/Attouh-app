import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double headerHeight = screenWidth > 576 ? screenWidth * 0.125 : screenWidth * 0.23;

    return Container(
      height: headerHeight,
      decoration: BoxDecoration(
        color: Colors.amber.shade800,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      // color: Color(0xFFF1842D),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 20,
        right: 20,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'ATTOUH',
              style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          HeaderButton()
        ],
      ),
    );
  }
}

class HeaderButton extends StatelessWidget {
  const HeaderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40,
      color: Colors.white,
      icon: const Icon(Icons.account_circle),
      onPressed: () {}, 
    );
  }
}