import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/Chat%20Screen/chatScreen.dart';
import 'package:talawadesigndemo/Pages/NewsFeed/postWidget.dart';
import 'package:talawadesigndemo/UI/customDrawer.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({Key key}) : super(key: key);

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
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
          'NEWS FEED',
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
          itemCount: 4,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 5,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return PostWidget();
          },
        ),
      ),
    );
  }
}
