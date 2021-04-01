import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/Chat%20Screen/chatPage.dart';
import 'package:talawadesigndemo/UI/wrapperUI.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Direct'),
    Tab(text: 'Event'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return WrapperScaffold(
      Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message_rounded),
          onPressed: () {},
        ),
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.teal,
            controller: _tabController,
            tabs: myTabs,
          ),
          automaticallyImplyLeading: false,
          title: Text(
            'Chats',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.3,
                fontSize: 18.0),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowGlow();
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                height: 60.0,
                child: Container(
                  width: 700,
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.05),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  // height: 40.0,
                  child: TextField(
                    onEditingComplete: () {},
                    controller: _controller,
                    textInputAction: TextInputAction.send,
                    onSubmitted: (msg) {
                      // addMessage('USER1', _controller.text);
                      // controller.clear();
                      _controller.text = "";
                    },
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search.. ",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey,
                          fontSize: 12.0),
                      focusColor: Colors.black,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Broadcasts",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown[300],
                  ),
                  title: Text(
                    "Broadcast Channel",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  Expanded(
                    child: ListView.separated(
                      itemCount: 10,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 3,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.teal[300],
                          ),
                          title: Text(
                            "User $index",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.0),
                          ),
                          subtitle: Text(
                            "This will be the last message",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChatPage(
                                title: "User $index",
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 3,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.deepPurple[300],
                          ),
                          title: Text(
                            "Event $index",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.0),
                          ),
                          subtitle: Text(
                            "This will be the last message",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChatPage(
                                title: "User $index",
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
