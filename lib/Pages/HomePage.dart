import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/Chat%20Screen/chatPage.dart';
import 'package:talawadesigndemo/Pages/Chat%20Screen/chatScreen.dart';
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
    ExplorePage(),
    EventPage(),
    NewsFeed(),
    ChatScreen(),
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
                  icon: Icon(Icons.explore),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined),
                  label: 'events',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.backup_table),
                  label: 'Feed',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline),
                  label: 'Chats',
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
