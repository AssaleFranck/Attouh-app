import 'package:attouh/pages/home/widgets/baner_carousel.dart';
import 'package:attouh/pages/home/widgets/cards.dart';
import 'package:attouh/pages/home/widgets/promo.dart';
import 'package:attouh/pages/home/widgets/search.dart';
// import 'package:attouh/pages/home/widgets/carousel.dart';
import 'package:attouh/pages/home/widgets/header.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      // backgroundColor: const Color(0xFFEDE7E2),
      body: ListView(
        children:  [
          HeaderSection(),
          SearchSection(),
          BannerSection(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 15, bottom: 10, ),
                child: Text(
                textAlign: TextAlign.start,
                "En Promo",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
          CardSection(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 15, bottom: 10, ),
                child: Text(
                textAlign: TextAlign.start,
                "Catégories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 400,
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,

              children: [
                
              ],
            ),
          )


        ],
      ),
  
    );
  }
}