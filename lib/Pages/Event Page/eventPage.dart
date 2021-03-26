import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/Chat%20Screen/chatScreen.dart';
import 'package:talawadesigndemo/UI/customDrawer.dart';

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
  String dropdownValue = "All";
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

    return Scaffold(
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
          'EVENTS',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
              return Container(
                height: 80,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Filter Events  :   ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16.0),
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
                height: 140,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Event Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.white)),
                        Text(
                          "Event Subtitle",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Date: 13/13/13",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "volunteers: 43",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
