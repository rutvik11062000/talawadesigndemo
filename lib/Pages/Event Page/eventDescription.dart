import 'package:flutter/material.dart';
import 'package:talawadesigndemo/UI/wrapperUI.dart';

class EventDescription extends StatelessWidget {
  const EventDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WrapperScaffold(
      Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              collapsedHeight: 100,
              expandedHeight: 220,
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Event Heading Here!",
                          style: TextStyle(fontSize: 18)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.calendar_today_outlined,
                                size: 10,
                                color: Colors.white,
                              ),
                              label: Text("25 - 26 july, 2021",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white))),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.lock_clock,
                                size: 10,
                                color: Colors.white,
                              ),
                              label: Text("4pm - 5pm",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white))),
                        ],
                      ),
                    ],
                  ),
                ),
                background: Container(
                  color: Colors.teal,
                ),
                centerTitle: true,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 80,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.subscriptions),
                    label: Text("Enter Now!!")),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(10),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        "This here will be the description of the event and then user can see a bried overlook what is going to happen in this event. \nHere you can give the description to give the user an intimating post to get subscribe to the event ",
                        style: TextStyle(fontSize: 12.0)),
                    TextButton(
                        onPressed: () {},
                        child: Text("Read more",
                            style: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(10),
              sliver: SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.teal[100],
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Center(
                    child: Text("Map-Box"),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(10),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    Text("Interested",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    Text(
                        "Here is all the people that are interested in this event",
                        style: TextStyle(fontSize: 12.0)),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              child: index == 3 ? Text("+") : Text(""),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
