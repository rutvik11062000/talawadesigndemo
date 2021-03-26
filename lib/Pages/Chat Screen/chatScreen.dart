import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/Chat%20Screen/chatPage.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 32,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'CHATS',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.add_comment,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      backgroundColor: Colors.white,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
        },
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                height: 60.0,
                child: Container(
                  width: 200,
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
                          fontWeight: FontWeight.w600, color: Colors.blueGrey),
                      focusColor: Colors.black,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Broadcasts",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.brown[300],
                  ),
                  title: Text(
                    "Broadcast Channel",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Direct Messages",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepPurple[300],
                    ),
                    title: Text(
                      "User $index",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "This will be the last message",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.camera_alt_outlined),
                        onPressed: () {}),
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
                childCount: 30, // 1000 list items
              ),
            ),
          ],
        ),
      ),
    );
  }
}
