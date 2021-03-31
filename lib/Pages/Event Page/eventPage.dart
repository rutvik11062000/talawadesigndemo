import 'dart:io';

import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/Chat%20Screen/chatScreen.dart';
import 'package:talawadesigndemo/Pages/Event%20Page/individualEventPage.dart';
import 'package:talawadesigndemo/UI/customDrawer.dart';
import 'package:talawadesigndemo/UI/wrapperUI.dart';

// class EventPage extends StatelessWidget {
//   const EventPage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: child,
//     );
//   }
// }
class EventPage extends StatefulWidget {
  const EventPage({Key key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  int selectedIdx = 5;
  String dropdownValue = "All";
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

    return WrapperScaffold(
      Scaffold(
        backgroundColor: Colors.white,
        key: _drawerKey,
        drawer: CustomDrawer(context),
        endDrawerEnableOpenDragGesture: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
            ),
            onPressed: () => _drawerKey.currentState.openDrawer(),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.chat_rounded,
                  color: Colors.blueGrey,
                ),
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ChatScreen())))
          ],
          title: Text(
            'Events',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                letterSpacing: 1.2),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
        ),
        // body: ListView(children: [
        //   PostWidget(),
        // ]),
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowGlow();
          },
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 12,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return CalendarDatePicker(
                  firstDate: DateTime(2021, 1, 1),
                  lastDate: DateTime(2021, 6, 1),
                  initialDate: DateTime(2021, 2, 31),
                  onDateChanged: (DateTime value) {},
                );
              }

              if (index == 1) {
                return Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Filter Events  :   ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12.0),
                        ),
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>[
                            'All',
                            'Not Registered',
                            'Most Attendees'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                );
              }
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  decoration: BoxDecoration(
                      color: Colors.teal[50],
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Here Event Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Colors.teal,
                                  letterSpacing: 1.5)),
                          Divider(),
                          Row(
                            children: [
                              Icon(
                                Icons.lock_clock,
                                color: Colors.teal,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "12:00pm to 1:20pm - 1.4 Hours",
                                style: TextStyle(
                                    color: Colors.teal, fontSize: 12.0),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.teal,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Rutvik Chandla",
                                style: TextStyle(
                                    color: Colors.teal, fontSize: 12.0),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_city_outlined,
                                color: Colors.teal,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Surat, Gujarat",
                                style: TextStyle(
                                    color: Colors.teal, fontSize: 12.0),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.people,
                                    color: Colors.teal,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "49 Attendies",
                                    style: TextStyle(
                                        color: Colors.teal, fontSize: 12.0),
                                  )
                                ],
                              ),
                              TextButton.icon(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EventScreen())),
                                  icon: Icon(
                                    Icons.subscriptions,
                                    color: Colors.teal,
                                    size: 12.0,
                                  ),
                                  label: Text("Subscribe Now!!",
                                      style: TextStyle(
                                          color: Colors.teal, fontSize: 14.0)))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void onPressed() {}
}
