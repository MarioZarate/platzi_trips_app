import 'package:flutter/material.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/home.dart';
import 'package:platzi_trips_app/profile_trips.dart';
import 'package:platzi_trips_app/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    Home(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      this.indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Theme(
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('')
            )
          ]
        ),
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
      ),
      body: widgetsChildren[indexTap]
    );
  }

}