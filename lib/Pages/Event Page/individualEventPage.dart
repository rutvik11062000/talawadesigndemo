import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/Chat%20Screen/chatPage.dart';
import 'package:talawadesigndemo/Pages/Event%20Page/eventDescription.dart';
import 'package:talawadesigndemo/Pages/Event%20Page/taskScreen.dart';
import 'package:talawadesigndemo/UI/wrapperUI.dart';

class EventScreen extends StatefulWidget {
  EventScreen({Key key}) : super(key: key);

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   EventDescription(),
  //   TaksScreen(),
  //   ChatPage(
  //     title: "Event Chat",
  //   )
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return WrapperScaffold(Scaffold(
      body: Center(
        child: EventDescription(),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.description),
      //       label: 'Description',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notes_outlined),
      //       label: 'Tasks',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat),
      //       label: 'Chat',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Theme.of(context).primaryColor,
      //   onTap: _onItemTapped,
      // ),
    ));
  }
}
