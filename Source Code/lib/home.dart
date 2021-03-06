import 'package:flutter/material.dart';
import 'package:uniacc/myPlaces.dart';
import 'dashboard.dart';
import 'details.dart';
import 'profile.dart';
import 'myPlaces.dart';
import 'newDash.dart';
import 'login.dart';
import 'review.dart';




class home extends StatefulWidget{

//  final String token;
//  const home(this.token);

  @override
  State<StatefulWidget> createState() {
    return homeState();
  }
}

class homeState extends State<home> {
  int _selectedPage = 0;
  final _pageOptions = [
    newDashboard(),
    myPlaces(),
    profile()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniAcc',
      theme: ThemeData(
        fontFamily: 'TTCommons',
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Dashboard"),
              backgroundColor: Color(0xFFE93B55),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                title: Text("My Places")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                title: Text("Profile")
            )
          ],
          selectedItemColor: Color(0xFFE93B55),
        ),
      ),
    );
  }
}
