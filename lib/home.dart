import 'package:flutter/material.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/review_list.dart';

import 'description_place.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace('Duwili Ella', 4, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ]
    );
  }

}