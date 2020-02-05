import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/images/place1.jpg'),
          CardImage('assets/images/place2.jpg'),
          CardImage('assets/images/place3.jpg'),
          CardImage('assets/images/place4.jpg'),
          CardImage('assets/images/place5.jpg')
        ],
      ),
    );
  }
}