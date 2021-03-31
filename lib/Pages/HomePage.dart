import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/Event%20Page/eventPage.dart';
import 'package:talawadesigndemo/Pages/NewsFeed/newsFeed.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    NewsFeed(),
    EventPage(),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Container(
          height: 700,
          width: 350,
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.backup_table),
                  label: 'Feed',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined),
                  label: 'Events',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_to_photos),
                  label: 'Add Post',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt),
                  label: 'Members',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: 'School',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.blueGrey,
              onTap: _onItemTapped,
            ),
            body: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
        ),
      ),
    );
  }
}
