import 'package:flutter/material.dart';
import 'package:sproutly/homepage.dart';
import 'package:sproutly/transactionspage.dart';

import 'activitiespage.dart';
import 'milestonespage.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, size: 30), label: 'Activities'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.note_rounded,
                size: 30,
              ),
              label: 'Transactions'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.heart_broken,
                size: 30,
              ),
              label: 'Milestones'),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green.shade900,
        selectedFontSize: 15,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: Stack(
        children: [
          renderView(0, const HomePage(),),
          renderView(1, const Activities(),),
          renderView(2, const Transactions(),),
          renderView(3, const Milestones(),),

        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view){
    return IgnorePointer(
      ignoring: selectedIndex != tabIndex,
      child: Opacity(
        opacity: selectedIndex == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
