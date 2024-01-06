import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import '';

class CarouselSection extends StatefulWidget {
  const CarouselSection({super.key});

  @override
  State<CarouselSection> createState() => _CarouselSectionState();
}

class _CarouselSectionState extends State<CarouselSection> {
  
  CarouselController controller = CarouselController();

  List<Image> items = [
    Image.asset('asset/images/attouch_logo.png'),
    Image.asset('asset/images/fruit.jpg'),
    Image.asset('asset/images/fruit-bg.png'),
    // Image.asset('asset/images/fruits.jpg'),
    // Image.asset('asset/images/fruitsbg.png'),
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 2.0, color: Colors.red)
      ),
      child: Column(
        children: [
          CarouselSlider(
            carouselController: controller,
            items: items, 
            options: CarouselOptions(
              //autoPlay: true,
              //autoPlayInterval: const Duration(seconds: 2),
              //autoPlayAnimationDuration: const Duration(milliseconds: 500),
              autoPlayCurve: Curves.easeInOutQuart,
              height: 200,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  controller.previousPage(
                    duration: const Duration(
                      milliseconds: 500
                    )
                  );
                }, 
                child: const  Text('Prev'),
              ),
              TextButton(
                onPressed: () {
                  controller.nextPage(
                    duration: const Duration(
                      milliseconds: 500,
                    )
                  );
                }, 
                child: const  Text('Next'),
              ),
            ],
          )
        ],
      )
      
    );
  }
}