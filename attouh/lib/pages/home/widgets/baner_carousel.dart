import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {

  List<BannerModel> banners = [
    BannerModel(imagePath: 'asset/images/fruit-bg.png', id: '1'),
    BannerModel(imagePath: 'asset/images/fruit.jpg', id: '2'),
    BannerModel(imagePath: 'asset/images/attouch_logo.png', id: '3'),
  ];

  @override
  Widget build(BuildContext context) {
    return BannerCarousel(
      borderRadius: 15,
      banners: banners,
      height: 200,
      animation: true,
      activeColor: Colors.red,
    );
  }
}