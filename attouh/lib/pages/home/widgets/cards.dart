import 'package:attouh/pages/home/widgets/carditems.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Row(
          children: [
            CardItems(),
            CardItems(),
            CardItems(),
            CardItems(),
            CardItems(),
            CardItems()
          ],
        ),
      ),
    );
  }
}